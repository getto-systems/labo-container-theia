FROM node:12.20.0-buster

RUN : && \
  : "install packages" && \
  apt-get update && \
  apt-get install -y \
    ripgrep \
  && \
  : "setup theia work dir" && \
  mkdir /opt/theia && \
  chown 1000:1000 /opt/theia && \
  : "cleanup apt caches" && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  :

COPY resources/package.json /opt/theia/package.json

WORKDIR /opt/theia

USER 1000

RUN : && \
  yarn && \
  sed -i lib/index.html -e 's|</script>|</script><link rel="stylesheet" href="./custom.css">|' && \
  :

COPY resources/custom.css /opt/theia/lib/custom.css
