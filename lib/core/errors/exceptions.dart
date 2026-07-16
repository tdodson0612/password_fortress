// lib/core/errors/exceptions.dart

class AppException implements Exception {
  final String message;

  const AppException(this.message);

  @override
  String toString() => message;
}

class EncryptionException extends AppException {
  const EncryptionException(super.message);
}

class VaultLockedException extends AppException {
  const VaultLockedException(super.message);
}

class InvalidPasswordException extends AppException {
  const InvalidPasswordException(super.message);
}