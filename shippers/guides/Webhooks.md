# Webhooks
Webhooks enable our system to notify your system when events occur.

## Getting started
1. [Create a webhook](https://runbuggy.docs.stoplight.io/reference/orders/webhooks/createwebhook) by providing the
 URL for our system to send events to. You may also optionally provide a value to send in the `Authorization` HTTP
  header.
2. [Test the new webhook](https://runbuggy.docs.stoplight.io/reference/orders/webhooks/testwebhook) in order to
 verify that our system is correctly calling your system.

## Supported Event types
* `vehicleTransferOrder.updated`. See [Vehicle Transfer Order statuses](https://runbuggy.docs.stoplight.io/guides/vto-statuses).

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
 `object` will contain the object [described here](https://runbuggy.docs.stoplight.io/reference/orders/vehicle-transfer-orders/getvehicletransferorderusingget). 
