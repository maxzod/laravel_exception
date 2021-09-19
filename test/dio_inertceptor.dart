// import 'package:dio/dio.dart';
// import 'package:laravel_exception/laravel_exception.dart';
// import 'package:laravel_exception/src/dio_interceptor.dart';
// import 'package:test/test.dart';

// void main() {
//   const base = 'Https://queen.com';
//   Dio? dio;
//   setUp(() {
//     dio = Dio(BaseOptions(
//       baseUrl: base,
//       validateStatus: (_) => true,
//     ));
//   });
//   tearDown(() {
//     dio?.interceptors.clear();
//     dio = null;
//   });
//   // test('when no Exception response return response', () async {
//   //   dio!.interceptors.addAll([
//   //     /// * Fake Data
//   //     InterceptorsWrapper(
//   //       onRequest: (options, handler) {
//   //         handler.resolve(
//   //           Response(
//   //             requestOptions: options,
//   //             statusCode: 200,
//   //             data: {'message': 'long Live the Queen'},
//   //           ),
//   //         );
//   //       },
//   //     ),

//   //     /// * Exception Interceptor
//   //     CustomInterceptors(),
//   //   ]);
//   //   final res = await dio!.get(
//   //     '/queen',
//   //   );
//   //   expect(res.statusCode, equals(200));
//   //   expect(res.data['message'], equals('long Live the Queen'));
//   // });
//   test('when 404 response LNotFoundException will be throw', () async {
//     dio!.interceptors.addAll([
//       /// * Fake Data
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           handler.resolve(
//             Response(
//               requestOptions: options,
//               statusCode: 404,
//               data: {'message': 'Enemies not found'},
//             ),
//           );
//         },
//       ),

//       /// * Exception Interceptor
//       CustomInterceptors(),
//     ]);
//     try {
//       await dio!.get('/queen');
//       expect(true, isFalse);
//     } catch (e) {
//       expect(e, isA<LNotFoundException>());
//     }
//   });
// }
