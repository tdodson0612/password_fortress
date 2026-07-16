// lib/services/import_export_service.dart

import '../models/password_entry.dart';

class ImportExportService {
  ImportExportService();

  Future<String> exportJson(
    List<PasswordEntry> entries,
  ) async {
    return '';
  }

  Future<List<PasswordEntry>> importJson(
    String json,
  ) async {
    return [];
  }

  Future<String> exportCsv(
    List<PasswordEntry> entries,
  ) async {
    return '';
  }

  Future<List<PasswordEntry>> importCsv(
    String csv,
  ) async {
    return [];
  }
}