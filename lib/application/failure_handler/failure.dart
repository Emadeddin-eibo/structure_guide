class Failure {
  const Failure({
    required this.methodName,
    required this.userMessage,
    this.currentClass,
    this.technicalMessage,
    this.exception,
    this.stackTrace,
  });

  final String methodName;
  final Object? currentClass;
  final String userMessage;
  final String? technicalMessage;
  final Object? exception;
  final Object? stackTrace;

  @override
  String toString() {
    return '''
    Failuire: {
      methodName: $methodName,
      message: $userMessage,
      className: ${currentClass.runtimeType},
      exception: $exception,
      stacktrace: $stackTrace,
    }
''';
  }
}
