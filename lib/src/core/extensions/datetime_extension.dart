import 'package:intl/intl.dart';

extension DateTimeExtenion on DateTime {
  String get ddMMMyy {
    return DateFormat('dd MMM, yy').format(this);
  }

  String get ddMMM {
    return DateFormat('dd MMM').format(this);
  }

  String get hhmmA {
    return DateFormat('hh:mm a').format(this);
  }

  String get formattedDateTime {
    return DateFormat('dd MMM yyyy hh:mm a').format(this);
  }
}
