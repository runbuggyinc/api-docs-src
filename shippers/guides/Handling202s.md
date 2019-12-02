# Handling 202's 

A response with 202 HTTP status code indicates that the request was accepted and being processed. A `location` header
 will be present and contain the URI for the client to use to poll for the result of the operation.

Here is a full example of handling 202's when creating an Order:

```javascript
const axios = require('axios').default;

let baseUrl = "https://apps.runbuggy.com/testing-v2/api";

let config = {
    headers: {
        'Authorization': 'Bearer changeme'
    },
};

let requestBody = {
    "type": "BASIC",
    "vehicleTransferOrders": [
        {
            "directions": {
                "pickup": {
                    "address": "4884 E Butler Ave, Fresno, CA 93727"
                },
                "dropoff": {
                    "address": "10050 N Metro Pkwy E, Phoenix, AZ 85051"
                }
            },
            "vehicle": {
                "vin": "KL4CJHSB3EB688122"
            }
        }
    ]
};

let order = null;

axios.post(baseUrl + '/orders', requestBody, config)
.then(response => {
    if (response.status === 201) {
        //success
        order = response.data;
    }
    if (response.status === 202) {
        getPendingOrder(response.headers.location).then(r => console.log(order));
    }
    if (response.status === 400) console.error(response.data.errors)
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

async function timeout(delayMs) {
    return new Promise((resolve, reject) => {
        setTimeout(resolve, delayMs);
    });
}
```