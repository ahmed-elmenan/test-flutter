import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  List<Object> properties = const <Object>[];
  
  Failure([properties]);

  @override
  List<Object> get props => properties;

}

// Genaral Failures
class ServerFailure extends Failure {}

class NetworkFailure extends Failure {}
