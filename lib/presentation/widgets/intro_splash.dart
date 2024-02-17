import 'package:flutter/material.dart';

class IntroSplash extends StatefulWidget {
  const IntroSplash({super.key});

  @override
  State<IntroSplash> createState() => _IntroSplashState();
}

class _IntroSplashState extends State<IntroSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.of(context).pushReplacementNamed('/app');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Splash intro',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
