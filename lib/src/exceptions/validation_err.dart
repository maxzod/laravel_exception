import 'package:laravel_exception/src/exceptions/imp.dart';

class LValidationException extends LaravelException {
  final Map<String, List<String>> _errors;

  LValidationException(
    Map<String, dynamic> response,
  )   : _errors = response['errors'] ?? response['error'],
        super(
          response: response,
        );

  /// contains the failed input keys in the exception object
  List<String> get keys => _errors.keys.toList();

  String get firstErrorKey => keys.first;

  String get firstErrorMessage => _errors[firstErrorKey]!.first;

  List<String> get firstErrorMessages => _errors[firstErrorKey]!;

  List<String> errorsByKey(String key) => _errors[key] ?? [];

  @override
  List<Object?> get props => [
        response,
        _errors,
      ];

  @override
  String toString() {
    /// String buffer that will contains the error messages in string
    final buffer = StringBuffer();

    /// to extract failure message and build String object
    /// that will contain the full failure message
    ///
    for (int felidIndex = 0; felidIndex < keys.length; felidIndex++) {
      final currentFelid = keys[felidIndex];
      final errorBuffer = StringBuffer();
      errorBuffer.write(currentFelid);

      /// extract currentFelid messages
      for (int i = 0; i < _errors[currentFelid]!.length; i++) {
        final currentMessage = _errors[currentFelid];

        /// whether  is last msg in this key or not
        final isLastMsg = i == _errors.keys.length;

        /// append the message
        errorBuffer
            .write('$currentFelid $currentMessage${isLastMsg ? '\n' : ''}');
      }

      /// append the message
      buffer.write('$errorBuffer\n');
    }

    /// covert the buffer to string
    return buffer.toString();
  }

  @override
  String get message => firstErrorMessage;
}
