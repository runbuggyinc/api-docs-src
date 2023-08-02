---
stoplight-id: vrnfbqwbyv50z
---

# Share Order Status with 3rd Parties

RunBuggy's newest update to our tracking for customers or third parties allows you to easily generate a short URL, and share an order's tracking status including origin and destination inspection reports, in addition to our standard order progression timeline.  This URL can either be directly shared with a third party, or embedded within an iFrame on your own site.

This portal can be white-labled with your logo and contact information.
The following instructions assume you already have a RunBuggy API bearer token for authentication and use in the following requests.

## Request the short url

In the following request, replace the {{orderid}} with the RunBuggy order ID.  The intended contact for the tracking link can be placed in the body of the request as shown below, but is not required.

### Staging environment
```
curl --location 'https://ng-staging.runbuggy.com/staging/orders-workflow/orders/{{orderid}}/portal/ROLE_DROPOFF_CONTACT/short' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{token}}' \
--data '{"name":"","phone":""}'
```

### Production Environment
```
curl --location 'https://apps.runbuggy.com/runbuggy/orders-workflow/orders/{{orderid}}/portal/ROLE_DROPOFF_CONTACT/short' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer{{token}}' \
--data '{"name":"","phone":""}'
```

The response will contain a short URL like this.  This short URL can be shared or embedded.  It may be necessary to remove any extra spaces in the URL before sharing.

```
https: //ng-staging.runbuggy.com/staging-green/shortly/wVK91wqvP
```

## iFrame
The returned short URL can be placed within an iFrame on your website to share with third parties while keeping them within your own site.  Simply place the short URL within a standard iFrame in your HTML like this:

```
<iframe src="URL"></iframe>
```

## Tracking Examples

Origin Report
![Screenshot 2023-08-02 094140.png](<../assets/images/Screenshot 2023-08-02 094140.png>)

Destination Report
![Screenshot 2023-08-02 094240.png](<../assets/images/Screenshot 2023-08-02 094240.png>)

Tracking
![Screenshot 2023-08-02 094332.png](<../assets/images/Screenshot 2023-08-02 094332.png>)





