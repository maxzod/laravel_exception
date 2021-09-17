/// * " Long Live The Queen "

class LaravelException<T> implements Exception {
  /// contains the `response` data
  final T response;

  LaravelException(this.response);

  @override
  String toString() => response.toString();
}
