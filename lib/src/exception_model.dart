import 'package:equatable/equatable.dart';

import 'extractors.dart';

/// * " Long Live The Queen "

class LaravelException extends Equatable
    with ErrorObjectExtractor
    implements Exception {
  /// contains the response data object
  final Map<String, List<String>> _errors;

  LaravelException(
    Map<String, List<String>> data,
  ) : _errors = data;

  ///! ``throw`` exception if is not valid format
  factory LaravelException.parse(Map<String, dynamic> data) {
    /// parser the response
    final _errors = <String, List<String>>{};
    ErrorObjectExtractor.extractObj(data).forEach(
      (key, value) {
        _errors[key] =
            (value as List).map<String>((e) => e.toString()).toList();
      },
    );

    /// new laravel exception
    return LaravelException(_errors);
  }

  static LaravelException? tryParse(Map<String, dynamic> data) {
    try {
      return LaravelException.parse(data);
    } catch (e) {
      return null;
    }
  }

  /// contains the failed input keys in the exception object
  List<String> get keys => _errors.keys.toList();

  /// contains the failed input keys in the exception object
  List<String> get errorMessages => [
        for (final err in _errors.keys) ..._errors[err]!,
      ];

  /// return the first failure message
  String get firstErrorMessage => _errors.values.first.first;

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
  List<Object?> get props => [
        _errors,
      ];
}
