// lib/core/errors/failures.dart

abstract class Failure {
  final String message;

  const Failure(this.message);

  @override
  String toString() => message;
}

class EncryptionFailure extends Failure {
  const EncryptionFailure(super.message);
}

class StorageFailure extends Failure {
  const StorageFailure(super.message);
}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure(super.message);
}