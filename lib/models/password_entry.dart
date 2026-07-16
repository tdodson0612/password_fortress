// lib/models/password_entry.dart

class PasswordEntry {
  final String id;

  final String title;
  final String website;
  final String username;
  final String email;
  final String password;

  final String notes;

  final String? folderId;
  final String? categoryId;

  final List<String> tags;

  final bool isFavorite;

  final DateTime createdAt;
  final DateTime updatedAt;

  final DateTime? expirationDate;

  final Map<String, String> customFields;

  const PasswordEntry({
    required this.id,
    required this.title,
    required this.website,
    required this.username,
    required this.email,
    required this.password,
    required this.notes,
    required this.tags,
    required this.isFavorite,
    required this.createdAt,
    required this.updatedAt,
    required this.customFields,
    this.folderId,
    this.categoryId,
    this.expirationDate,
  });

  PasswordEntry copyWith({
    String? title,
    String? website,
    String? username,
    String? email,
    String? password,
    String? notes,
    String? folderId,
    String? categoryId,
    List<String>? tags,
    bool? isFavorite,
    DateTime? updatedAt,
    DateTime? expirationDate,
    Map<String, String>? customFields,
  }) {
    return PasswordEntry(
      id: id,
      title: title ?? this.title,
      website: website ?? this.website,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      notes: notes ?? this.notes,
      folderId: folderId ?? this.folderId,
      categoryId: categoryId ?? this.categoryId,
      tags: tags ?? this.tags,
      isFavorite: isFavorite ?? this.isFavorite,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      expirationDate: expirationDate ?? this.expirationDate,
      customFields: customFields ?? this.customFields,
    );
  }
}