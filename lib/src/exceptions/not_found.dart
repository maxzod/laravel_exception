import 'package:laravel_exception/src/exceptions/imp.dart';

class LNotFoundException extends LaravelException {
  /// * Exception
  final String? exception;

  /// * Exception message
  final String _message;

  /// * Exception file
  final String? file;

  /// * Exception line
  final int? line;
  LNotFoundException({
    required Map<String, dynamic> response,
    required String message,
    this.exception,
    this.file,
    this.line,
  })  : _message = message,
        super(
          response: response,
        );

  factory LNotFoundException.parse(Map<String, dynamic> map) {
    return LNotFoundException(
      response: map,
      message: map['message'],
      exception: map['exception'],
      file: map['file'],
      line: map['line'],
    );
  }

  @override
  List<Object?> get props {
    return [
      response,
      message,
      exception,
      file,
      line,
    ];
  }

  @override
  String get message => _message;
}
