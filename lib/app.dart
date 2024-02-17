import 'package:flutter/material.dart';

import 'presentation/core/faded_animator.dart';
import 'presentation/core/standard_scaffold.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int activePage = 0;

  Widget _buildBody() {
    switch (activePage) {
      case 0:
        return const Placeholder();
      case 1:
        return const Placeholder();
      default:
        return const Placeholder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      body: FadedAnimator(
        child: _buildBody(),
      ),
    );
  }
}
