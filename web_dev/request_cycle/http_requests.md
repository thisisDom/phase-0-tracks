What are some common HTTP status codes?
  200 OK: The request was processed fine.
  404 Not Found: The resource can not be found or is no longer available
  403 Forbidden: Access to the resource is forbidden
  500 Interal Server Error: A catchall response when no other 500 error codes fit. There is a server side error with the receiver of the request.
  503 Service Unavailable: The web server is unavailable.
  504 Gateway Timeout: The request took to long to process the request and access to the server timed out.
What is the difference between a GET request and a POST request? When might each be used?
    A GET request requests data from a resource whereas a POST request requests to submit data to a resource. 
    You might use a GET method whenever you just need to get non sensitive data from a resource, like a stylesheet. You might use a POST method whenever you need to send sensitive data, like login credentials for a site.
Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
    A cookie is a piece of data a server sends to a user client that may store it on the user's machine and send it back with the next request back to the server.