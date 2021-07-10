//  TODO :: test when
//                   givin valid response
//                   givin not valid resposnse
//                   givin single error with multi failures
//                   givin more than one error with multi failures
//  end of todo


// import 'dart:convert';
// import 'dart:developer';

// import 'package:laravel_exception/laravel_exception.dart';
// import 'package:test/test.dart';

// void main() {
//   final errorObj = '''{
//   "error": {
//     "phone": [
//       "قيمة الهاتف مُستخدمة من قبل."
//     ],
//     "email": [
//       "قيمة البريد الالكتروني مُستخدمة من قبل."
//     ],

//     "stcpay": [
//       "قيمة stcpay مُستخدمة من قبل."
//     ]
//   }
// }''';

//   test('valid prse', () {
//     final json = jsonDecode(errorObj) as Map<String, dynamic>;
//     final exception = LaravelException.fromMap(json);
//     // print(exception.toString());
//     expect(exception.toString(), equals('''phoneقيمة الهاتف مُستخدمة من قبل.

// emailقيمة البريد الالكتروني مُستخدمة من قبل.

// stcpayقيمة stcpay مُستخدمة من قبل.

// '''));
//   });
// }

