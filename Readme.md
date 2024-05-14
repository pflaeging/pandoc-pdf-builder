# Pandoc build image

This container image is for converting markdown text to wellformed pdf.

One of our main uses is a pipeline in gitlab ;-)

Here's the example of a simple `.gitlab-ci.yml` file:

```yaml
image:
  name: quay.io/pflaeging/pandoc-pdf-builder:1.1.1

variables:
  GIT_SUBMODULE_STRATEGY: recursive

pdf:
  script:
    - mkdir output
    - pandoc pdf.yaml ??-*.md -o output/Documentation.pdf
  artifacts:
    paths:
      - output/Documentation.pdf
```