// lib/models/password_category.dart

class PasswordCategory {
  final String id;

  final String name;

  final String icon;

  const PasswordCategory({
    required this.id,
    required this.name,
    required this.icon,
  });

  PasswordCategory copyWith({
    String? name,
    String? icon,
  }) {
    return PasswordCategory(
      id: id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }
}