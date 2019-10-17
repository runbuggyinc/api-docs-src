# Performing Tests from the API Reference
API operations may be tested from the the documentation. 

![Testing](https://api-documentation-assets.s3-us-west-2.amazonaws.com/testing.gif)

## Steps
1. As with all operations, you must first authenticate and retrieve an access token. See the [Authentication Guide](https://runbuggy.docs.stoplight.io/guides/authentication-guide) for
 more information. Copy the access token.
2. Navigate to the API operation you wish to test. For example, [Order creation](https://runbuggy.docs.stoplight.io/reference/orders/orders/createorderusingpost).
3. Under [Send a Test Request](https://runbuggy.docs.stoplight.io/reference/orders/orders/createorderusingpost#send-a-test-request), you will see an $$.env var called `Authorization`. Set the value to `Bearer {Your Token}`.
4. Click send to perform the Test Request.

After setting the Authorization value once, it should be pre-populated on subsequent pages.