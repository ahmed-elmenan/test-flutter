import 'package:pep/core/error/failure.dart';

const String SERVER_FAILURE_MESSAGE =
    'Server Failure Please Pull Down To Refresh';
const String NETWORK_FAILURE_MESSAGE =
    'Connection Problem Please Pull Down To Refresh';

class ErrorUtils {
  /// mapFailureToMessage function map the failure returned
  /// from the bloc's error state to the describing message

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
