import 'package:laravel_exception/laravel_exception.dart';
import 'package:test/test.dart';

void main() {
  const resData = <String, dynamic>{
    "error": {
      "phone": ["قيمة الهاتف مُستخدمة من قبل."],
      "email": ["قيمة البريد الالكتروني مُستخدمة من قبل."],
      "username": ["قيمة username مُستخدمة من قبل."],
    },
  };
  test(
    'when parsing valid response it will do it right',
    () {
      final exception = LaravelException.parse(resData);

      expect(exception.errorMessages.length, equals(3));
      expect(
          exception.errorMessages[0], equals('قيمة الهاتف مُستخدمة من قبل.'));
      expect(exception.errorMessages[1],
          equals('قيمة البريد الالكتروني مُستخدمة من قبل.'));
      expect(
          exception.errorMessages[2], equals('قيمة username مُستخدمة من قبل.'));
    },
  );
  test(
    'when parsing `` NOT `` valid response it will throw exception',
    () {
      expect(
        () => LaravelException.parse(const {'foo': 'bar'}),
        throwsA('''
    package : laravel_exception 
    reason : you have tried to extract laravel exception from response object
    that is not a valid laravel exception or the key is not add to the extractions list
    try to use LaravelException.addExtractionKey(String) => to register the key
    '''),
      );
    },
  );
  test(
    'when useing `` LaravelException.tryParse(Map) ``  with not valid response it will return null',
    () {
      expect(LaravelException.tryParse(const {'foo': 'bar'}), equals(null));
    },
  );
  test(
    'when useing `` LaravelException.tryParse(Map) ``  with not valid response it will LaravelException',
    () {
      expect(LaravelException.tryParse(resData), isA<LaravelException>());
    },
  );
}
