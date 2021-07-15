# [**`Laravel Exception`**](https://pub.dev/packages/laravel_exception)

# **`Part of Queen Packages 👑`**

[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

# Motivation

- since we work with APIs built with `Laravel` almost daily
- i have built this package to easily wrap the validation exception which laravel might throw
- you can easily know which fields got rejected or have failed and there messages

# Content

- `LaravelException` Exception class which will parse the laravel response

# example

```dart
 // 422
if(res.statusCode == HttpStatus.unprocessableEntity){
      throw LaravelException.parse(res.data);
}

```

# Exception props 🧬

- `keys` contains the failed input keys in the exception object
- `errorMessages` contains the failed input keys in the exception object
- `firstErrorMessage` return the first failure message
- `toString()` convert the object to one big error message

# What is next ?

- [ ] dio interceptor
- [ ] logs
