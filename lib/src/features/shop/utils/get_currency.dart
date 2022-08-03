import 'package:intl/intl.dart';

String getCurrency(num? value) {
  if (value == null) {
    return '';
  }
  final formatCurrency = NumberFormat();
  return 'PHP${formatCurrency.format(value)}';
}
