// lib/models/password_category.dart

class PasswordCategory {

  final String id;

  final String name;

  final String icon;

  final String description;


  const PasswordCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
  });


  PasswordCategory copyWith({
    String? name,
    String? icon,
    String? description,
  }) {
    return PasswordCategory(
      id: id,
      name:
          name ?? this.name,
      icon:
          icon ?? this.icon,
      description:
          description ?? this.description,
    );
  }
}