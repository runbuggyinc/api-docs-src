# Gate Passes

Gate passes are files attached to the Vehicle Transfer Orders.

There are two ways to handle adding gate passes.

## 1. Create Order then Attach Gate Pass

Steps:
1. [Create Order](/b3A6NDE4MzU1MTY-create-an-order)
2. The Order must be fully created along with all Vehicle Transfer Order's before proceeding. See: [Handling 202's](/ZG9jOjQxODQyNzEw-handling-202-s)
3. [Retrieve the expanded Order](/b3A6NDE4MzU1MjI-retrieve-an-expanded-order) which has all Vehicle Transfer Orders.
4. [Add gate passes](/b3A6NDE4MzU1MzI-add-a-gate-pass) to the Vehicle Transfer Orders as needed.


## 2. Create Gate Pass then Create Order

Steps:
1. [Create Gate Passes](/b3A6NDE4MzU1MzA-create-a-gate-pass). This will return the resource path.
2. [Create Order](/b3A6NDE4MzU1MTY-create-an-order). Within the Vehicle Transfer Order requests, you may provide the list of gate passes created in step 1.
