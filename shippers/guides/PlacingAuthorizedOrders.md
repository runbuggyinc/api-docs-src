# Placing Orders for another Company

## Overview
This guide is for companies that need to place Orders on behalf of other companies.

### Requirements
You must be Authorized to create an Order on behalf of the intended Company. Your Runbuggy support contact
 can work with you in order to establish this authorization.

### Steps
* Retrieve target Authorized Company's ID.
* Create a new Order request and provide target Company's ID for the payer.
* *(Optional)* Retrieve an Order Quote.
* Place the Order.

## Retrieving the Authorized Dealer
The first step is the retrieve the Company information for whom you will be placing the Order. This is necessary in
 order to get their ID to use in the following steps.
 
There are 2 options for retrieving an Authorized Company:
1. [Retrieve a list](https://runbuggy.docs.stoplight.io/reference/companies/companies/getcompaniesthatauthorizedcompanyusingget) of all Companies for whom you are Authorized.
2. [Retrieve a specific Company](https://runbuggy.docs.stoplight.io/reference/companies/companies/getcompaniesthatauthorizedcompanyidbyuseridusingget) for whom you are Authorized by providing their username.

## Placing the Order
Placing an Order on behalf of another Company is different than a normal request in only one way: You must specify the
 Payer.

If you're just getting started with the API, check out the following:
* For a general overview of placing an Order, see the [Shipping Vehicles guide](https://runbuggy.docs.stoplight.io/guides/shipping-vehicles).
* For operation reference & examples, see the [Create Order](https://runbuggy.docs.stoplight.io/reference/orders/orders/createorderusingpost) reference.

### Specifying the Payer
*Important: Always check the [Create Order](https://runbuggy.docs.stoplight.io/reference/orders/orders/createorderusingpost) reference for the most accurate documentation.*

The most important step with placing the Order is to correctly specify the Payer. Assuming you authorized to place an
 Order for a Company with the ID `7b34ba14-1f7a-4492-9fd7-4bef02ad6256`, consider the following request example:
```json
{
  "notes": "These are the orders for Ed's lot.",
  "type": "BASIC",
  "vehicleTransferOrders": [
    {
      "direction": {
        "pickup": {
          "address": "4884 E Butler Ave, Fresno, CA 93727",
          "contact": {
            "name": "Richard Smith",
            "phone": "60211222212"
          }
        },
        "dropoff": {
          "address": "10050 N Metro Pkwy E, Phoenix, AZ 85051",
          "contact": {
            "name": "Ed Jones",
            "phone": "4805544431"
          }
        }
      },
      "vehicle": {
        "vin": "KL4CJHSB3EB688122"
      },
      "payer": {
        "id": "7b34ba14-1f7a-4492-9fd7-4bef02ad6256"
      }   
    }
  ]
}
```

The above example illustrates how you may create a Basic Order on behalf of the Company by providing their unique ID
 as the Payer.