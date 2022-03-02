# Placing an Order for another Company

### Requirements
You must be Authorized to create an Order on behalf of the intended Company. Your Runbuggy support contact
 can work with you to establish this authorization.

## Step 1: Retrieve the Authorized Company 
You'll need their ID to place the Order.

Options:
* [Retrieve a list](/docs/shipping-api/b3A6NDE4MzU1MTQ-retrieve-authorized-companies) of all Companies for whom you are Authorized.
* [Retrieve a specific Company](/docs/shipping-api/b3A6NDE4MzU1MTU-retrieve-authorized-companies-by-user) for whom you are Authorized by providing their username.

## Step 2: Create Order with other Payer
[Create Order](/docs/shipping-api/b3A6NDE4MzU1MTY-create-an-order) using the authorized
 company as the payer.

Request to Create Order for Company with the ID `7b34ba14-1f7a-4492-9fd7-4bef02ad6256`:
```json
{
  "notes": "These are the orders for Ed's lot.",
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
      },
      "payer": {
        "id": "7b34ba14-1f7a-4492-9fd7-4bef02ad6256",
        "type": "DEALER",
        "name": "Acme Auto World"
      }   
    }
  ]
}
```

Specify the payer for *every* vehicle.