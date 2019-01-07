#FROM
FROM ruimarinho/bitcoin-core
#EXPOSE 8080
#ENTRYPOINT ["/lightning-kube"]
#COPY ./bin/ /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["-printtoconsole -regtest=1"]
