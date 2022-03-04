import 'dart:async';

import 'package:cricket/app/app.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    _timer = Timer(
      const Duration(milliseconds: 3000),
      () => context.go(RoutePages.home),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CsColors.primary,
      child: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Text(
            'Cricket',
            style: CsTextStyle.headline1.copyWith(
              color: CsColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
