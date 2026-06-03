// Copyright 2026 Hitsteps
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-platform/tag-manager/templates/gallery-tos
(or such other URL as Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Hitsteps Analytics",
  "description": "Install Hitsteps real-time web analytics, visitor tracking, heatmaps, and live chat through Google Tag Manager.",
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
    "help": "Paste the 32-character Hitsteps tracking code for this site. If you paste the longer API key, the template will use the first 32 characters.",
    "displayName": "Hitsteps tracking code",
    "name": "siteCode",
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

let siteCode = (data.siteCode || '').trim().toLowerCase();

if (siteCode.indexOf('code=') >= 0) {
  siteCode = siteCode.split('code=')[1].split('&')[0].split('"')[0].split("'")[0];
}

siteCode = siteCode.replace(/[^a-f0-9]/g, '').substring(0, 32);

if (siteCode.length !== 32) {
  data.gtmOnFailure();
  return;
}

const scriptUrl = 'https://edgecdnplus.com/code?code=' + encodeUriComponent(siteCode);

if (queryPermission('inject_script', scriptUrl)) {
  injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, scriptUrl);
} else {
  data.gtmOnFailure();
}


___TESTS___

scenarios: []


___NOTES___

Initial Hitsteps Google Tag Manager Community Template.
