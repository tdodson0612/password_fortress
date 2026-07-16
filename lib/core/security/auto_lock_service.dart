// lib/core/security/auto_lock_service.dart

class AutoLockService {
  DateTime? _lastActivity;

  void recordActivity() {
    _lastActivity = DateTime.now();
  }

  bool shouldLock({
    required Duration timeout,
  }) {
    if (_lastActivity == null) {
      return true;
    }

    final elapsed = DateTime.now().difference(_lastActivity!);

    return elapsed >= timeout;
  }

  void reset() {
    _lastActivity = DateTime.now();
  }
}