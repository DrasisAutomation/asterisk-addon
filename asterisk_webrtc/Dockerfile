ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.19
FROM $BUILD_FROM

# Install Asterisk and necessary modules
RUN apk add --no-cache \
    asterisk \
    asterisk-srtp \
    asterisk-speex \
    bash \
    tzdata

# Copy configuration files
COPY asterisk/ /etc/asterisk/
COPY run.sh /

# Make run script executable
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
