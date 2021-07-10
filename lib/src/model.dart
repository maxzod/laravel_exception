class LaravelException implements Exception {
  final Map<String, List<String>> errors;

  LaravelException._(this.errors);
  factory LaravelException.fromMap(Map<String, dynamic> map) {
    final _errrs = <String, List<String>>{};
    ((map['error'] ?? map['errors']) as Map).forEach((key, value) {
      _errrs.addAll({key: value.map<String>((e) => e.toString()).toList()});
    });
    return LaravelException._(_errrs);
  }

  Iterable<String> get keys => errors.keys;

  String get first => errors.values.first.first;

  @override
  String toString() {
    final buffer = StringBuffer();
    for (final error in keys) {
      final errorBuffer = StringBuffer();
      errorBuffer.write(error);

      for (final error in errors[error]!) {
        //  TODO :: remoe last white space
        errorBuffer.write(error + '\n');
      }
      buffer.write(errorBuffer.toString() + '\n');
    }
    return buffer.toString();
  }
}
