import 'package:flutter/material.dart';
import 'presentation/core/failure_handler_view.dart';
import 'utilities/routes/routes_generator.dart';

class GuessMyWatchApp extends StatelessWidget {
  const GuessMyWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.generateRoute,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: FailureHandlerView(
            child: child ?? Container(),
          ),
        );
      },
    );
  }
}

ThemeData getThemeData() {
  return ThemeData(
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        fontSize: 24,
      ),
      bodySmall: TextStyle(
        fontSize: 18,
      ),
    ),
  );
}
