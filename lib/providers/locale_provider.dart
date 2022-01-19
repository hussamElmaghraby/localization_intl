// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localization_intl/l10n/l10n.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  void cleanLocale() {
    _locale = null;
    notifyListeners();
  }
}
