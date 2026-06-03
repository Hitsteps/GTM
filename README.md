# Hitsteps Analytics Google Tag Manager Template

This repository package contains the Hitsteps Analytics tag template for Google Tag Manager.

The template loads the existing Hitsteps tracking script from:

```text
https://edgecdnplus.com/code?code=YOUR_HITSTEPS_TRACKING_CODE
```

## Usage

1. Open Google Tag Manager.
2. Go to Templates.
3. Import `template.tpl`, or add the template from the Community Template Gallery after it is approved.
4. Create a new tag using the Hitsteps Analytics template.
5. Paste the Hitsteps tracking code for the site.
6. Fire the tag on All Pages and publish the container.

## Community Template Gallery Submission

Google expects a standalone public GitHub repository with these files at the repository root:

- `template.tpl`
- `metadata.yaml`
- `LICENSE`
- `README.md`

Before submitting:

1. Create a public GitHub repository for this package.
2. Put these files at the repository root.
3. Commit the files.
4. Replace `REPLACE_WITH_GITHUB_COMMIT_SHA` in `metadata.yaml` with the commit SHA that contains `template.tpl`.
5. Commit the metadata update.
6. Submit the repository URL in the Google Tag Manager Community Template Gallery.

## License

Apache License 2.0.
