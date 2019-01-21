FROM thomsch98/markserv
EXPOSE 80
ENTRYPOINT ["/lightning-kube"]
COPY ./bin/ /