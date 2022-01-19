import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_intl/widgets/Language_widget.dart';
import 'package:localization_intl/widgets/language_picker.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
        actions: [
          LanguagePickerWidget(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LanguagePickerWidget(),
            Text(
              AppLocalizations.of(context).language,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(),
            Text(AppLocalizations.of(context).helloworld),
          ],
        ),
      ),
    );
  }
}
