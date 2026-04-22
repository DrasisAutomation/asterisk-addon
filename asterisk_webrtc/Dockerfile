ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.3.2
FROM $BUILD_FROM

# Install Asterisk and necessary modules
RUN apk add --no-cache \
    asterisk \
    asterisk-srtp \
    asterisk-pjproject \
    asterisk-speex \
    bash \
    tzdata

# Copy configuration files
COPY asterisk/ /etc/asterisk/
COPY run.sh /

# Make run script executable
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
