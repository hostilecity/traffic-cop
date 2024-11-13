# ruby-design-patterns

### Summary:
User API - Create a record for each unique user.

### Requirements:
- Record must be persistent after the application that created it has been closed.
- Function validates name and email; if either or both are missing, raise exception with user-friendly message.
  - If the record already exists, return a tuple of [String json, Integer status] - example: `["{\“id\”: \“found id\”}", 301]`
  - If the record is new, return a tuple of `["{\“id\”: \“new id\”}", 201]`

### Run the application:
```
ruby application.rb
```

### Make requests from a separate console:
```
cat samples/user.json | curl --json @- localhost:2000
```
