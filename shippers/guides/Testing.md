### Test from the docs:

![Testing](https://api-documentation-assets.s3-us-west-2.amazonaws.com/testing.gif)

### Authenticate your Session
1. [Authenticate](https://runbuggy.docs.stoplight.io/reference/login/authentication/login) and copy your token.
2. Go to an operation to test, e.g. [Order creation](https://runbuggy.docs.stoplight.io/reference/orders/orders/createorderusingpost).
3. Under *[Send a Test Request](https://runbuggy.docs.stoplight.io/reference/orders/orders/createorderusingpost#send-a-test-request)*, set $$.env var `Authorization` to value`Bearer {Your Token}`.
