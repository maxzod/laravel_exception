# [**`Laravel Exception`**](https://pub.dev/packages/laravel_exception)

# **`Part of Queen Packages 👑`**

# Motivation

- since we work with APIs built with `Laravel` almost daily
- i have built this package to easily wrap the validation , NotFound , Internal Server Error exceptions which laravel might throw
- you can easily know which fields got rejected or have failed and there messages in case of validation
- in laravel debug mode extract the message easily with the stack trace
- also you can build your custom exception if needed

# Content

- `LaravelException` abstract class which will parse the laravel response
- `LValidationException` Exception for `422` status code use the constructor to create objects
- `LServerException` Exception for `500` status code use the `parse(Map)` factory to create objects
- `LNotFoundException` Exception for `404` status code use the `parse(Map)` factory to create objects

# example

```dart

if(res.statusCode == 422){
      throw  LValidationException(res.data);
}else if(res.statusCode == 500){
      throw  LServerException.parse(res.data);
}else if(res.statusCode == 404){
      throw  LNotFoundException.parse(res.data);
}

```

# What is next ?

- [ ] dio interceptor
- [ ] logs
