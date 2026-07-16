// lib/models/password_folder.dart

class PasswordFolder {
  final String id;

  final String name;

  final DateTime createdAt;

  const PasswordFolder({
    required this.id,
    required this.name,
    required this.createdAt,
  });

  PasswordFolder copyWith({
    String? name,
  }) {
    return PasswordFolder(
      id: id,
      name: name ?? this.name,
      createdAt: createdAt,
    );
  }
}