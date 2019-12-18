## Vehicle Transfer Order Statuses

The `VehicleTransferOrder.status` field has the following possible values:
```
DRAFT
AVAILABLE
CLAIMED
UNCLAIMED
ASSIGNED
REJECTED
ACCEPTED
SIGNATURE_ON_PICKUP
DELIVERED
CANCELED
ERROR
```

### Draft
The Vehicle Transfer Order has been successfully received by the system and is being processed.

### Ready
The Vehicle Transfer Order has been successfully processed and will be made available to be claimed shortly.

### Available
The Vehicle Transfer Order has been successfully entered in the system and is available to be accepted by a transporter.

### Claimed
The Vehicle Transfer Order has been claimed by a transportation company to be transferred.

### Unclaimed
The Vehicle Transfer Order has been unclaimed by a transportation company.

### Assigned
The Vehicle Transfer Order has been assigned to a transportation company driver.

### Rejected
The Vehicle Transfer Order has been rejected by a transportation company driver.

### Accepted
The Vehicle Transfer Order has been accepted by a transportation company driver.

### Signature on Pickup
The Vehicle Transfer Order has been picked up by a transportation company driver.

### Delivered
The Vehicle Transfer Order has been delivered to its destination.

### Error
The Vehicle Transfer Order contains errors.
