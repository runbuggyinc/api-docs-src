# Gate Passes

Gate passes are files attached to the Vehicle Transfer Orders.

There are two ways to handle adding gate passes.

## 1. Create Order then Attach Gate Pass
This flow allows gate passes to be attached to an Order that has already been placed.

Steps:
1. [Create Order](/docs/shipping/6fcc8c040ec03-create-an-order)
2. The Order must be fully created along with all Vehicle Transfer Order's before proceeding. See: [Handling 202's](/docs/shipping/ea2a0d46dfc8d-handling-202-s)
3. [Retrieve the expanded Order](/docs/shipping/e37c8f68eee73-retrieve-an-expanded-order) which contains all Vehicle Transfer Orders.
4. [Add gate passes](/docs/shipping/695c9c3a91799-add-a-gate-pass) to the Vehicle Transfer Orders as needed.


## 2. Create Gate Pass then Create Order
This flow is typically used when a user is manually assembling an order. It allows the user to set the gate passes before the order is initially submitted.

Steps:
1. [Create Gate Passes](/docs/shipping/f921153f122b2-create-a-gate-pass). This will return the resource path.
2. [Create Order](/docs/shipping/6fcc8c040ec03-create-an-order). Within the Vehicle Transfer Order requests, you may provide the list of gate passes created in step 1.
