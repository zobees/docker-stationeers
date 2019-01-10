FROM zobees/steamcmd

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends \
      netcat qstat && \
    rm -rf /var/lib/apt/lists/*

ENV STEAMCMD_APP_ID="600760" \
    WORLD_NAME="stationeers" \
    WORLD_TYPE="Terrain" \
    SERVER_NAME="A Stationeers Server" \
    AUTOSAVE_INTERVAL="300"

ADD stationeers-* /usr/local/bin/
RUN chmod +x /usr/local/bin/stationeers-*

LABEL maintainer cliffrowley@gmail.com

# HEALTHCHECK CMD [ "stationeers-status" ]

CMD ["steamcmd-wrapper", "stationeers-server"]
