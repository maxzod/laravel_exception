import 'package:equatable/equatable.dart';

import 'package:laravel_exception/src/exceptions/imp.dart';
import 'package:laravel_exception/src/models/file_stack_trace.dart';

class LNotFoundException extends LaravelException<Map<String, dynamic>>
    with EquatableMixin {
  final String message;
  final String? exception;
  final String? file;
  final int? line;
  final List<FileStackTrace>? trace;
  LNotFoundException({
    required Map<String, dynamic> response,
    required this.message,
    this.exception,
    this.file,
    this.line,
    this.trace,
  }) : super(response);

  factory LNotFoundException.fromMap(Map<String, dynamic> map) {
    return LNotFoundException(
      response: map,
      message: map['message'],
      exception: map['exception'],
      file: map['file'],
      line: map['line'],
      trace: (map['trace'] as List?)
          ?.map((x) => FileStackTrace.fromMap(x))
          .toList(),
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
}
