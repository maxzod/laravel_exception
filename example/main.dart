import 'package:laravel_exception/laravel_exception.dart';

void main(List<String> args) {
  dynamic res;
  if (res.statusCode == 422) {
    throw LValidationException(res.data);
  } else if (res.statusCode == 500) {
    throw LServerException.parse(res.data);
  } else if (res.statusCode == 404) {
    throw LNotFoundException.parse(res.data);
  }
}
