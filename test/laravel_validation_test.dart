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
      'The dial code is invalid.',
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
        exception.errorsCombined,
        equals(
          """The website format is invalid.\n"""
          """The calling code may not be greater than 4 characters.\n"""
          """The dial code is invalid.\n"""
          """The mobile may not be greater than 9 characters.""",
        ),
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
        exception.errorsCombinedByKey("calling_code"),
        equals(
          """The calling code may not be greater than 4 characters.\n"""
          """The dial code is invalid.""",
        ),
      );

      expect(
        exception.errors().length,
        equals(
          exception.keys.length,
        ),
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
