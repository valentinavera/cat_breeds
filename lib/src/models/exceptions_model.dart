class ServerException implements Exception {
  String? message;
  num? code;

  ServerException({
    required this.message,
    required this.code,
  });

  @override
  String toString() {
    return 'CODIGO DE ERROR $code: $message';
  }
}