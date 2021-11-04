import 'package:equatable/equatable.dart';

/// * " Long Live The Queen "

abstract class LaravelException with EquatableMixin implements Exception {
  /// contains the `response` data
  final Map<String, dynamic> response;

  /// * {"message" => }
  /// * attached message with the response
  final String message;

  LaravelException({
    required this.response,
  }) : message = response['message'];

  @override
  String toString() => message;

  @override
  List<Object?> get props;
}
