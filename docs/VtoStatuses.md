## Vehicle Transfer Order Statuses

The following events are vehicleTranferOrder(VTO) event statuses that are sent to the shipper customer's endpoint on the RunBuggy webhook.  One event is received for each VTO within an order, and each vehicle on an order has a VTO.  Because there can be multiple VTOs and events received per order, it's recommended to use the VTO ID rather than the order ID to reference each event with the appropriate record in your system.

### Standard events

```
AVAILABLE - Order available for transporters to claim on the marketplace
CLAIMED - Transporter has claimed the order to move
ASSIGNED - Transporter has assigned the order to a driver
UNCLAIMED - Transporter has unclaimed the order
APPROVED - An unclaimed order has been approved to be re-listed on the martketplace
ACCEPTED - The driver has accepted the load after being assigned, and provided a pickup ETA.
DRIVER_ARRIVED - The driver has arrived at the pickup location
PICKED_UP - Pickup inspection complete
SIGNATURE_ON_PICKUP - Pickup signatures complete
PROVIDED_ETA_DROPOFF - Driver has provided their ETA for arriving at the dropoff location
UNLOADED - Arrived at dropoff location and dropoff inspection complete
DELIVERED - Dropoff signatures complete
COMPLETE - Order completed
```

### Transporter Update Events
```
PICKUP_ETA_UPDATED - The Transporter has updated the pickup ETA
DROPOFF_ETA_UPDATED - The Transporter has updated the dropoff ETA
REJECTED - The assigned driver has rejected the order, and the Transporter will either assign a new driver or unclaim the order
CANCELLED - The Shipper has cancelled the order
```

### Exception Events
```
ERROR
```

### Hitch TMS Events
```
MARKETPLACE_PLACED
MARKETPLACE_CLAIMED
MARKETPLACE_AVAILABLE
```