// lib/models/password_folder.dart

class PasswordFolder {

  final String id;

  final String name;

  final String? parentFolderId;

  final DateTime createdAt;

  const PasswordFolder({
    required this.id,
    required this.name,
    required this.createdAt,
    this.parentFolderId,
  });


  PasswordFolder copyWith({
    String? name,
    String? parentFolderId,
  }) {
    return PasswordFolder(
      id: id,
      name:
          name ?? this.name,
      parentFolderId:
          parentFolderId ?? this.parentFolderId,
      createdAt:
          createdAt,
    );
  }
}