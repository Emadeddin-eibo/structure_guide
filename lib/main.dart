import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Init your firebase here.
  /// if you have local notifications, init here.
  // await configureInjection();

  /// Run the app directly, but it you have some Provider before accessing
  /// MaterialApp, then use them here.
  /// For example, if you have ThemeBloc, then you must use a provider for it here.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const GuessMyWatchApp());
  });
}
