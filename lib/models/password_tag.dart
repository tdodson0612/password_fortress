// lib/models/password_tag.dart

class PasswordTag {
  final String id;

  final String name;

  const PasswordTag({
    required this.id,
    required this.name,
  });

  PasswordTag copyWith({
    String? name,
  }) {
    return PasswordTag(
      id: id,
      name: name ?? this.name,
    );
  }
}