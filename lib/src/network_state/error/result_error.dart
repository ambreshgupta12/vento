///[ResultError] is a common error class with [errorCode] and [errorMessage]
class ResultError {
  ///Constructors to add [errorCode] and [errorMessage]
  ResultError(this.errorCode, this.errorMessage);

  ///[errorCode] for to identity what kind of error this is
  int errorCode;

  ///[errorMessage]
  String errorMessage;
}
