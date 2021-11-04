import 'dart:developer';

import 'package:laravel_exception/src/exceptions/imp.dart';

class LNotFoundException extends LaravelException {
  /// * Exception
  final String? exception;

  /// * Exception file
  final String? file;

  /// * Exception line
  final int? line;

  LNotFoundException({
    required Map<String, dynamic> response,
    this.exception,
    this.file,
    this.line,
  }) : super(
          response: response,
        );

  factory LNotFoundException.parse(Map<String, dynamic> map) {
    return LNotFoundException(
      response: map,
      exception: map['exception'],
      file: map['file'],
      line: map['line'],
    );
  }
  static LNotFoundException? tryParse(Map<String, dynamic> map) {
    try {
      return LNotFoundException(
        response: map,
        exception: map['exception'],
        file: map['file'],
        line: map['line'],
      );
    } catch (e) {
      log('Q: LException => $e');
      return null;
    }
  }

  @override
  List<Object?> get props => [
        message,
        response,
        exception,
        file,
        line,
      ];
}
