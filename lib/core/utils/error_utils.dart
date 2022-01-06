import 'package:pep/core/error/failure.dart';

const String SERVER_FAILURE_MESSAGE = 'Server failure';
const String NETWORK_FAILURE_MESSAGE = 'Network failure';


class ErrorUtils {
  
  static String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case NetworkFailure:
        return NETWORK_FAILURE_MESSAGE;
      default:
        return "Unexpected error";
    }
  }
  
}