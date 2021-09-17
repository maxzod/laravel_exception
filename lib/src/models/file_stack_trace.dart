import 'package:equatable/equatable.dart';

class FileStackTrace extends Equatable {
  final String file;
  final int line;
  final String function;
  final String cClass;
  final String type;
  const FileStackTrace({
    required this.file,
    required this.line,
    required this.function,
    required this.cClass,
    required this.type,
  });
 
  factory FileStackTrace.fromMap(Map<String, dynamic> map) {
    return FileStackTrace(
      file: map['file'],
      line: map['line'],
      function: map['function'],
      cClass: map['class'],
      type: map['type'],
    );
  }

  @override
  List<Object> get props {
    return [
      file,
      line,
      function,
      cClass,
      type,
    ];
  }
}
