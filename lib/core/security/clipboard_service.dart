// lib/core/security/clipboard_service.dart

import 'package:flutter/services.dart';

class ClipboardService {
  ClipboardService();

  Future<void> copySensitiveText(String value) async {
    await Clipboard.setData(
      ClipboardData(text: value),
    );
  }

  Future<void> clearClipboard() async {
    await Clipboard.setData(
      const ClipboardData(text: ''),
    );
  }
}