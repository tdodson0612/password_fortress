// lib/features/search/search_controller.dart

import '../../models/password_entry.dart';
import '../../services/search_service.dart';

class SearchController {

  final SearchService service;

  SearchController({
    required this.service,
  });

  List<PasswordEntry> search({
    required List<PasswordEntry> entries,
    required String query,
  }) {
    return service.search(
      entries: entries,
      query: query,
    );
  }
}