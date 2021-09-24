import 'package:laravel_exception/src/exceptions/validation_err.dart';
import 'package:test/test.dart';

void main() {
  const resData = <String, dynamic>{
    "error": {
      "phone": [
        "قيمة الهاتف مُستخدمة من قبل.",
        'مش مرتاح للرقم ده',
      ],
      "email": [
        "قيمة البريد الالكتروني مُستخدمة من قبل.",
      ],
      "username": [
        "قيمة username مُستخدمة من قبل.",
      ],
    },
  };
  test(
    'when parsing valid response it will do it right',
    () {
      final exception = LValidationException(resData);

      expect(
        exception.keys,
        equals(['phone', 'email', 'username']),
      );
      expect(
        exception.firstErrorKey,
        equals('phone'),
      );
      expect(
        exception.firstErrorMessage,
        equals("قيمة الهاتف مُستخدمة من قبل."),
      );
      expect(
        exception.message,
        equals("قيمة الهاتف مُستخدمة من قبل."),
      );
      // expect(
      //   exception.firstErrorMessages.length,
      //   equals(2),
      // );
      // expect(
      //   exception.firstErrorMessages,
      //   equals([
      //     "قيمة الهاتف مُستخدمة من قبل.",
      //     'مش مرتاح للرقم ده',
      //   ]),
      // );

      // expect(
      //   exception.errorsByKey('sucessfull_key'),
      //   equals([]),
      // );

      // expect(
      // exception.errorsByKey('email'),
      // equals([
      //   "قيمة البريد الالكتروني مُستخدمة من قبل.",
      // ]),
      // );
    },
  );
}
