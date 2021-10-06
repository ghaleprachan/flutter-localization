import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization/main.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  _LocalizationScreenState createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  appLocalizations.language,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(appLocalizations.helloWorld),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  MyApp.of(context)?.setLocale(
                    const Locale.fromSubtags(languageCode: 'es'),
                  );
                },
                child: const Text('Change Language'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension LocalizationExt on State<StatefulWidget> {
  AppLocalizations get appLocalizations => AppLocalizations.of(context)!;
}
