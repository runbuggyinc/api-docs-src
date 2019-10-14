# Authentication

All API requests must provide the [HTTP authorization request header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Authorization) along with a token.

Retrieving a token can be accomplished by making a request to [login](https://runbuggy.docs.stoplight.io/login/login/login) with your account's credentials.

Once the token has been retrieved (e.g. `e8ujql7desph6bm4ajf6pop96mhevi39`), add it to the Authorization request.

Example:
```
curl -X POST \
  https://api.example.com \
  -H 'Authorization: Bearer e8ujql7desph6bm4ajf6pop96mhevi39' \
  -H 'Content-Type: application/json' \
}'
```
