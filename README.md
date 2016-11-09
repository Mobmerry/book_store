## README

#interview_challenge_api

## API Endpoints and Sample Requests

---------------------------------------------------------------------------------------------

###1.[GET] BOOKS
---------------------------------------------------------------------------------------------
  ```
   curl -v -H "Content-Type: application/json" -X GET http://localhost:3000/api/v1/books
  ```

  ###Sample Response
===============================================

```
HTTP/1.1 200 OK

  [
    {
        "author": "steven shankar",
        "categories": "movies",
        "lastCheckedOut": null,
        "lastCheckedOutBy": null,
        "publisher": "O really",
        "title": "some name",
        "url": "/api/v1/books/2"
    },
    {
        "author": "Mohit Goel",
        "categories": "Gadgets",
        "lastCheckedOut": "2016-02-19 15:28:56 +0530",
        "lastCheckedOutBy": "vinod",
        "publisher": "O really",
        "title": "some name",
        "url": "/api/v1/books/3"
    }
  ]
```


2.[POST] BOOK
-----------------------------------------------------------------------------------------------------

  ```
    curl -v -H "Content-Type: application/json" -X POST GET http://localhost:3000/api/v1/books -d '{ "book" : { "publisher" : "O really", "author" : "some one", "categories" : "movies", "title" : "something" } }'
  ```

  ###Sample Response
===============================================
```
HTTP/1.1 201 Created

  {
    "book":{
            "author":"some one",
            "categories":"movies",
            "lastCheckedOut":null,
            "lastCheckedOutBy":null,
            "publisher":"O really",
            "title":"someone",
            "url":"/api/v1/books/35"
          }
  }
```


3.[GET] BOOK
--------------------------------------------------------------------------------------------------------
  ```
  curl -v -H "Content-Type: application/json" -X GET http://localhost:3000/api/v1/books/:id
  ```

  ###Sample Response
===============================================
```
HTTP/1.1 200 OK

  {
    "author":"steven shankar",
    "categories":"movies",
    "lastCheckedOut":null,
    "lastCheckedOutBy":null,
    "publisher":"O really",
    "title":"some name",
    "url":"/api/v1/books/2"
  }
```


4.[PUT] BOOK_CHECKOUT
-------------------------------------------------------------------------------------------------------
  ```
  curl -v -H "Content-Type: application/json" -X PUT http://localhost:3000/api/v1/books/:id -d '{"lastCheckedOutBy": "kumar"}'
  ```

###Sample Response
===============================================
```
HTTP/1.1 200 OK
  {
    "author":"steven shankar",
    "categories":"movies",
    "lastCheckedOut":"2016-02-23 13:01:46 +0530",
    "lastCheckedOutBy":"kumar",
    "publisher":"O really",
    "title":"some name","url":"/api/v1/books/8"
  }
```


5.[DELETE] BOOK
--------------------------------------------------------------------------------------------------------------------
```
  curl -v -H "Content-Type: application/json" -X DELETE http://localhost:3000/api/v1/books/:id
```

###Sample Response
===============================================
```
HTTP/1.1 204 No content
  {
  }
```

6.[DELETE] CLEAN_BOOKS
-------------------------------------------------------------------------------------------------------------------
```
  curl -v -H "Content-Type: application/json" -X DELETE http://localhost:3000/api/v1/clean
```

###Sample Response
===============================================
```
HTTP/1.1 200 OK
  {
  }
```

