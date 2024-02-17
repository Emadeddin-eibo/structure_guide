import 'package:flutter/cupertino.dart';

import '../../utilities/constants/helpers.dart';

class FadedAnimator extends StatelessWidget {
  final Widget child;

  const FadedAnimator({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (Widget c, Animation<double> a) {
        return FadeTransition(opacity: a, child: c);
      },
      duration: fastAnimationDuration,
      child: child,
    );
  }
}
