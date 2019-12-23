FROM rclone/rclone:1.50

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="aws-s3-sync" \
      org.label-schema.description="rclone configured via single environment variable" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/hferentschik/rclone" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

ADD *.sh /
RUN chmod +x /*.sh

WORKDIR /

ENTRYPOINT ["/rclone.sh"]
CMD [""]
