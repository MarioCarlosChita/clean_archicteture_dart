
abstract class Failure {
    final String message;
    Failure({required this.message});
}


class FailureServerConnection  extends  Failure{
    final String message;
    FailureServerConnection({required this.message}):super(message: message);
}

class FailureServerFormat extends  Failure{
    final String message;
    FailureServerFormat({required this.message}):super(message: message);
}