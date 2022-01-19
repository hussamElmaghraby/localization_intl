import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_intl/l10n/l10n.dart';
import 'package:localization_intl/providers/locale_provider.dart';
import 'package:localization_intl/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      builder: (ctx, _) {
        final provider = Provider.of<LocaleProvider>(ctx);
        return MaterialApp(
          home: HomeScreen(),
          theme: ThemeData(
            primarySwatch: Colors.amber,
          ),
          supportedLocales: L10n.all,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            //
            GlobalWidgetsLocalizations.delegate
          ],
          locale: provider.locale,
        );
      },
    );
  }
}
