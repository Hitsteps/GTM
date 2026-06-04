# Hitsteps Analytics Google Tag Manager Template

This repository package contains the Hitsteps Analytics tag template for Google Tag Manager.

The template accepts the full Hitsteps API Code, removes the final 5 authentication characters, and loads the existing Hitsteps tracking script from:

```text
https://edgecdnplus.com/code?code=YOUR_PUBLIC_SITE_CODE
```

## Usage

1. Open Google Tag Manager.
2. Go to Templates.
3. Import `template.tpl`, or add the template from the Community Template Gallery after it is approved.
4. Create a new tag using the Hitsteps Analytics template.
5. Paste the Hitsteps API Code for the site.
6. Fire the tag on All Pages and publish the container.

Only the first 32 hexadecimal characters are sent to the website as the public site code. The private 5-character authentication suffix is omitted.

## Community Template Gallery Submission

This repository is structured for Google Tag Manager's Community Template Gallery. Google expects these files at the repository root:

- `template.tpl`
- `metadata.yaml`
- `LICENSE`
- `README.md`

The initial version SHA is already set in `metadata.yaml`. To submit the template, open the Google Tag Manager Community Template Gallery, choose Submit Template, and provide this repository URL:

```text
https://github.com/Hitsteps/GTM
```

## License

Apache License 2.0.
