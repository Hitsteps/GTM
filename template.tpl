___TERMS_OF_SERVICE___
By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___
{
  "displayName": "Hitsteps Analytics",
  "description": "Install Hitsteps real-time web analytics, visitor tracking, heatmaps, and live chat through Google Tag Manager with your Hitsteps API code.",
  "categories": ["ANALYTICS", "HEAT_MAP", "CHAT"],
  "securityGroups": [],
  "id": "cvt_hitsteps_analytics",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "",
    "displayName": "Hitsteps",
    "id": "hitsteps"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "help": "Paste the full Hitsteps API code. The template removes the final 5 authentication characters before loading the public tracking script.",
    "displayName": "Hitsteps API code",
    "name": "apiCode",
    "type": "TEXT"
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://edgecdnplus.com/code?code=*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const queryPermission = require('queryPermission');
const encodeUriComponent = require('encodeUriComponent');

let apiCode = (data.apiCode || '').trim().toLowerCase();

if (apiCode.indexOf('code=') >= 0) {
  apiCode = apiCode.split('code=')[1].split('&')[0].split('"')[0].split("'")[0];
}

const publicSiteCode = apiCode.replace(/[^a-f0-9]/g, '').substring(0, 32);

if (publicSiteCode.length !== 32) {
  data.gtmOnFailure();
  return;
}

const scriptUrl = 'https://edgecdnplus.com/code?code=' + encodeUriComponent(publicSiteCode);

if (queryPermission('inject_script', scriptUrl)) {
  injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, scriptUrl);
} else {
  data.gtmOnFailure();
}


___TESTS___

scenarios: []


___NOTES___

Hitsteps Google Tag Manager Community Template. Accepts the Hitsteps API code and loads only the public 32-character site code.
