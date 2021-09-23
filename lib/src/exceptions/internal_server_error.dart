import 'package:laravel_exception/src/exceptions/imp.dart';
import 'package:laravel_exception/src/models/file_stack_trace.dart';

/// * `status code of => 500
class LServerException extends LaravelException {
  /// * Exception
  final String? exception;

  /// * Exception message
  final String _message;

  /// * Exception file
  final String? file;

  /// * Exception line
  final int? line;

  /// * Exception stack trace
  final List<FileStackTrace>? trace;

  LServerException({
    required Map<String, dynamic> response,
    required String message,
    this.exception,
    this.file,
    this.line,
    this.trace,
  })  : _message = message,
        super(
          response: response,
        );

  factory LServerException.parse(Map<String, dynamic> map) {
    return LServerException(
      response: map,
      message: map['message'],
      exception: map['exception'],
      file: map['file'],
      line: map['line'],
      trace:
          (map['trace'] as List?)?.map((x) => FileStackTrace.parse(x)).toList(),
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
      trace,
    ];
  }

  @override
  String get message => _message;
}
