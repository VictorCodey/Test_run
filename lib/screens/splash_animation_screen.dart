import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTopJoined,
        backgroundColor: Colors.tealAccent,
        splash: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    image: AssetImage('assets/images/IMG-20220821-WA0078.jpg'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text('LEARN A SKILL NOW!!'),
          ],
        ),
        nextScreen: const DrawerWidget());
  }
}
