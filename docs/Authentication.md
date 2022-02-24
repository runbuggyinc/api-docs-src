# Authentication

[Authenticate](/docs/shipping-api/b3A6NDE4MzU1MTM-retrieve-token) to retrieve a Bearer token.

Add to HTTP header e.g. `Authorization: Bearer e8ujql7desph6bm4ajf6pop96mhevi39`

Example secure request:
```
curl --request POST \
  --url https://ng-staging.runbuggy.com/staging/api/orders \
  --header 'authorization: Bearer tfep1l767r0tolbln9f2apbalfamd2ok' \
  --header 'content-type: application/json' \ 
  --data '{}'
```
