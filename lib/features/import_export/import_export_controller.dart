// lib/features/import_export/import_export_controller.dart

import '../../services/import_export_service.dart';

class ImportExportController {

  final ImportExportService service;

  ImportExportController({
    required this.service,
  });

  Future<String> exportJson() async {
    return service.exportJson([]);
  }

  Future<String> exportCsv() async {
    return service.exportCsv([]);
  }

  Future<void> importJson(
    String data,
  ) async {
    await service.importJson(data);
  }

  Future<void> importCsv(
    String data,
  ) async {
    await service.importCsv(data);
  }
}