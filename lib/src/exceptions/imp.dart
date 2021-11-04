import 'package:equatable/equatable.dart';

/// * " Long Live The Queen "

abstract class LaravelException with EquatableMixin implements Exception {
  /// contains the `response` data
  final Map<String, dynamic> response;

  /// * {"message" => }
  /// * attached message with the response

  LaravelException({
    required this.response,
  });

  @override
  String toString() => message;

  @override
  List<Object?> get props;

  String get message => response['message'];
}
