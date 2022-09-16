#!/bin/sh
curl --include \
     --request POST \
     --header "Content-Type: application/json; charset=utf-8" \
     --header "Authorization: token 7865b608-194c-45c5-9310-bf88b7f6aaa2" \
     --data-binary "{
  \"target\": {
    \"name\": \"divassnyk/hello-py:latest\"
  }
}" \
'https://api.snyk.io/api/v1/org/5b2b11c3-2268-4282-8c32-dfc9a9fb1370/integrations/1f53464b-3909-4317-9faa-1f1463b641d3/import'
