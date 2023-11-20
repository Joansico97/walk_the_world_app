class ApiException implements Exception {
  ApiException(this.httpCode, this.message);
  final int httpCode;
  final String message;

  @override
  String toString() => 'ApiException: {httpCode: $httpCode, message: $message}';
}
