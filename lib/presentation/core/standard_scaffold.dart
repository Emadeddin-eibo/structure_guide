import 'package:flutter/material.dart';

class StandardScaffold extends StatelessWidget {
  final Widget body;
  const StandardScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body);
  }
}
