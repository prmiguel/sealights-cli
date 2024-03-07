FROM alpine:3.19.1

RUN wget -nv -O sealights-slcli.tar.gz https://agents.sealights.co/slcli/latest/slcli-linux-amd64.tar.gz && \
    tar -xzf ./sealights-slcli.tar.gz && \
    rm -f ./sealights-slcli.tar.gz && \
    mv ./slcli /usr/local/bin/slcli
ENTRYPOINT [ "/usr/local/bin/slcli" ]
