# Webhooks
Webhooks enable our system to notify your system when events occur.

## Getting started
1. [Create a webhook](https://runbuggy.stoplight.io/docs/shipping-api/b3A6NDE4MzU1MzU-create-a-webhook) by providing the
 URL for our system to send events to. You may also optionally provide a value to send in the `Authorization` HTTP
  header.
2. [Test the new webhook](https://runbuggy.stoplight.io/docs/shipping-api/b3A6NDE4MzU1Mzc-test-a-webhook) in order to
 verify that our system is correctly calling your system.

## Supported Event types
* `vehicleTransferOrder.updated`. See [Vehicle Transfer Order statuses](https://runbuggy.stoplight.io/docs/shipping-api/ZG9jOjQxODQyNzE2-vto-statuses).

## Event Model
```
{
    "type": String,
    "created": Timestamp,
    "object": {
        "id": String
    }
}
```

The event's `object` property will contain the full object. For example, `vehicleTransferOrder.updated` events'
 `object` will contain the object [described here](https://runbuggy.stoplight.io/docs/shipping-api/b3A6NDE4MzU1Mjg-get-expanded-vehicle-transfer-order). 
