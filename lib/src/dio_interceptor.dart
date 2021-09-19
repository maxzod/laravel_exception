// import 'dart:developer';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:laravel_exception/laravel_exception.dart';

// class CustomInterceptors extends Interceptor {
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     //TODO:: check if the backend is laravel
//     log(response.statusCode.toString());
//     switch (response.statusCode) {
//       case 500:
//         throw LServerException.fromMap(response.data);
//       case 404:
//         throw LNotFoundException.fromMap(response.data);
//       case 422:
//         throw LValidationException(response.data);
//       default:
//         return handler.next(response);
//     }
//   }
// }
