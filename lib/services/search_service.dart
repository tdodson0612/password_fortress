// lib/services/search_service.dart

import '../models/password_entry.dart';

class SearchService {
  SearchService();

  List<PasswordEntry> search({
    required List<PasswordEntry> entries,
    required String query,
  }) {
    if (query.trim().isEmpty) {
      return entries;
    }

    final lowerQuery = query.toLowerCase();

    return entries.where(
      (entry) {
        return entry.title
                .toLowerCase()
                .contains(lowerQuery) ||
            entry.website
                .toLowerCase()
                .contains(lowerQuery) ||
            entry.username
                .toLowerCase()
                .contains(lowerQuery) ||
            entry.email
                .toLowerCase()
                .contains(lowerQuery);
      },
    ).toList();
  }
}