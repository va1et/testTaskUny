class CacheException implements Exception {
  final String cause;
  CacheException(this.cause);
}

class ServerException implements Exception {
  final String cause;
  ServerException(this.cause);
}
