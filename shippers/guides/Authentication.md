# Authentication

All API requests must provide the [HTTP authorization request header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Authorization) along with a Bearer token.

[Authenticate](https://runbuggy.docs.stoplight.io/reference/login/authentication/login) to retrieve token.

Add to HTTP header e.g. `Authorization: Bearer e8ujql7desph6bm4ajf6pop96mhevi39`

Example secure request:
```
curl --request POST \
  --url https://apps.runbuggy.com/testing-v2/api/orders \
  --header 'authorization: Bearer tfep1l767r0tolbln9f2apbalfamd2ok' \
  --header 'content-type: application/json'
\ --data '{}'
```
