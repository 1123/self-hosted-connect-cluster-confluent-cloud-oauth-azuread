curl localhost:8083/connectors \
     -H "Accept:application/json" \
     -H  "Content-Type:application/json" \
     -X POST \
     -d @data-gen-source-connector.json
