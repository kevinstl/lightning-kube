FROM thomsch98/markserv
#EXPOSE 3080
#ENTRYPOINT ["/lightning-kube"]
#COPY ./bin/ /

CMD ["markserv", "-x", "-a", "0.0.0.0", "-p", "3080", "-l", "35729"]