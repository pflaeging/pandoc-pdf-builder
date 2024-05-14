FROM alpine:latest

LABEL summary="Pandoc-Latex" \
      description="pandoc with latex full edition" \
      name="quay.io/pflaeging/pandoc-pdf-builder" \
      version="1.1.1" \
      maintainer="Peter Pfläging <peter@pflaeging.net>"


USER 0

RUN apk upgrade --no-cache && apk add --no-cache pandoc font-dejavu texlive-full

ENTRYPOINT ["/bin/sh", "-c"]

