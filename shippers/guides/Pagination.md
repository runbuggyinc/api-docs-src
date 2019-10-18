# Pagination

Paginated resources support query params:
* offset
* pageNumber
* pageSize
* sort


Paginated resources are returned in a common format:
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