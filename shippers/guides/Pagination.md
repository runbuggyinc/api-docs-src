# Pagination

Paginated resources can be retrieved using a variety of query params, including:
* offset
* pageNumber
* pageSize
* sort

Resources are returned in a common page format. Consider this example of paginated Orders. Note that the Order properties have been omitted to make it easier to see pagination properties specifically.
```
{
   "content":[
      {
				//Order
      }
   ],
   "empty":false,
   "first":true,
   "last":false,
   "number":1,
   "numberOfElements":10,
   "pageable":{
      "offset":0,
      "pageNumber":1,
      "pageSize":10,
      "paged":true,
      "sort":{
         "empty":true,
         "sorted":true,
         "unsorted":false
      },
      "unpaged":false
   },
   "size":10,
   "sort":{
      "empty":true,
      "sorted":true,
      "unsorted":false
   },
   "totalElements":100,
   "totalPages":10
}
```