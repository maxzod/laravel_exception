import 'package:meta/meta.dart';

mixin ErrorObjectExtractor {
  static final List<String> _extractionKeys = [
    'error',
    'errors',
  ];
  static List<String> get extractionKeys => _extractionKeys;

  static void addExtractionKey(String key) => _extractionKeys.add(key);

  static void addExtractionKeys(List<String> keys) =>
      _extractionKeys.addAll(keys);

  @protected
  static Map<String, dynamic> extractObj(Map<String, dynamic> map) {
    for (final key in _extractionKeys) {
      if (map[key] != null) {
        return map[key] as Map<String, dynamic>;
      }
    }
    throw '''
    package : laravel_exception 
    reason : you have tried to extract laravel exception from response object
    that is not a valid laravel exception or the key is not add to the extractions list
    try to use LaravelException.addExtractionKey(String) => to register the key
    ''';
  }
}
