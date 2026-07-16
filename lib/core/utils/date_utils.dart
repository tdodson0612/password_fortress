// lib/core/utils/date_utils.dart

abstract final class DateUtilsHelper {
  DateUtilsHelper._();

  static String formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }

  static String formatDateTime(DateTime date) {
    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');

    return '${date.month}/${date.day}/${date.year} $hour:$minute';
  }

  static bool isExpired(DateTime? expirationDate) {
    if (expirationDate == null) {
      return false;
    }

    return DateTime.now().isAfter(expirationDate);
  }
}