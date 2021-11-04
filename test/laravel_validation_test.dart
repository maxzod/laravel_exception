import 'package:laravel_exception/src/exceptions/validation_err.dart';
import 'package:test/test.dart';

const resData = <String, dynamic>{
  'message': 'The given data was invalid.',
  'errors': {
    'website': [
      'The website format is invalid.',
    ],
    'calling_code': [
      'The calling code may not be greater than 4 characters.',
    ],
    'mobile': [
      'The mobile may not be greater than 9 characters.',
    ],
  },
};
void main() async {
  test(
    'when parsing valid response it will do it right',
    () {
      final exception = LValidationException(resData);

      expect(
        exception.keys,
        equals(['website', 'calling_code', 'mobile']),
      );
      expect(
        exception.firstErrorKey,
        equals('website'),
      );
      expect(
        exception.firstErrorMessage,
        equals('The website format is invalid.'),
      );
      expect(
        exception.message,
        equals('The given data was invalid.'),
      );
      expect(
        exception.firstErrorMessages.length,
        equals(1),
      );
      expect(
        exception.firstErrorMessages,
        equals(['The website format is invalid.']),
      );

      expect(
        exception.errorsByKey('success_key'),
        equals(null),
      );

      expect(
        exception.errorsByKey('mobile'),
        equals(['The mobile may not be greater than 9 characters.']),
      );
    },
  );
}
