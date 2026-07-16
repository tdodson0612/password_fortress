// lib/features/backup/backup_controller.dart

import '../../services/backup_service.dart';

class BackupController {

  final BackupService service;

  BackupController({
    required this.service,
  });

  Future<String> createBackup() async {
    return service.createBackup();
  }

  Future<void> restoreBackup(
    String backup,
  ) async {
    await service.restoreBackup(
      backup,
    );
  }
}