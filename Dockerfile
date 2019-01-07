#FROM
FROM ruimarinho/bitcoin-core
#EXPOSE 8080
#ENTRYPOINT ["/lightning-kube"]
ENTRYPOINT ["-printtoconsole -regtest=1"]
#COPY ./bin/ /