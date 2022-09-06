FROM schemaspy/schemaspy:snapshot
USER root
WORKDIR /
RUN apk update && \
    apk add --no-cache curl fontconfig && \
    mkdir download && \
    cd download && \
    curl -O https://ipafont.ipa.go.jp/IPAexfont/ipaexg00201.zip && \
    unzip ipaexg00201.zip && \
    mkdir -p /usr/share/fonts/truetype/ipa && \
    cp */*ttf /usr/share/fonts/truetype/ipa && \
    fc-cache -fv && \
    rm -rf download

