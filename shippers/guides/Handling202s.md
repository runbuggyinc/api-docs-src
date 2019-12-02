# Handling 202's 

A response with 202 HTTP status code indicates that the request was accepted and being processed. A `location` header
 will be present and contain the URI for the client to use to poll for the result of the operation.

Here is a full example of handling 202's when creating an Order *([view full source](https://github.com/runbuggyinc/api-doc-src/blob/master/shippers/src/202-example.js))*
```javascript
let order = null;

axios.post(baseUrl + '/orders', requestBody, config)
.then(response => {
    if (response.status === 202) {
        getPendingOrder(response.headers.location).then(r => console.log(order));
    }
}).catch(error => {
    // handle error
    console.error(error);
});

async function getPendingOrder(resourceLocation) {
    let attemptsRemaining = 10;
    while (order == null && attemptsRemaining > 0) {
        console.log("checking order");
        await timeout(5000);
        axios.get(baseUrl + resourceLocation, config)
            .then(async response => {
                switch(response.data.status) {
                    case "created": {
                        order = response.data;
                        break;
                    }
                    case "error": {
                        console.error(response.data.errors);
                        attemptsRemaining = 0;
                        break;
                    }
                    default: {
                        attemptsRemaining--;
                        break;
                    }
                }
            }).catch(error => {
                // handle error
                console.error(error);
                attemptsRemaining--;
            });
    }
}
```