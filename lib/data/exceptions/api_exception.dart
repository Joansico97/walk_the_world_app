class ApiException implements Exception {
  ApiException(this.httpCode, this.message);
  int httpCode;
  String message;

  @override
  String toString() {
    return 'ApiException(httpCode: $httpCode, message: $message)';
  }
}
