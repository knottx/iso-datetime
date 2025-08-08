extension DateTimeExtension on DateTime {
  String timeZoneOffsetSuffix() {
    final offset = timeZoneOffset;
    final hours = offset.inHours.abs().toString().padLeft(2, '0');
    final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final sign = offset.isNegative ? '-' : '+';
    return '$sign$hours:$minutes';
  }

  String toIso8601StringWithOffset() {
    return toIso8601String() + timeZoneOffsetSuffix();
  }
}
