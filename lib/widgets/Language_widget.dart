import 'package:flutter/material.dart';
import 'package:localization_intl/l10n/l10n.dart';
import '../providers/locale_provider.dart';

import 'package:provider/provider.dart';

class LanguageWidget extends StatelessWidget {
  // const LanguageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.countryCode ?? 'US');
    final localeProvider =
        Provider.of<LocaleProvider>(context).setLocale(locale);
    return Container(
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 72,
          child: Text(
            '',
            style: TextStyle(fontSize: 80),
          ),
        ),
      ),
    );
  }
}
