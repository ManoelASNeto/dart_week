import 'package:intl/intl.dart';

extension FormaterExtensions on double {
  String get currencyPtBR {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt-BR', symbol: r'R$');
    return currencyFormat.format(this);
  }
}
