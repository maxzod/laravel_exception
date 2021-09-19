import 'package:equatable/equatable.dart';

/// * " Long Live The Queen "

abstract class LaravelException<T> with EquatableMixin implements Exception {
  /// contains the `response` data
  final T response;

  String get message;

  LaravelException({
    required this.response,
  });

  @override
  String toString() => message;

  @override
  List<Object?> get props;
}
