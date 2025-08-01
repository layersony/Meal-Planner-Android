import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mealplanner/widgets/additions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color.fromRGBO(138, 71, 235, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // food image
            _foodImage(context),
            const SizedBox(height: 20),
            // login/Sign options
            _signInUp(),
          ],
        ),
      ),
    );
  }

  // food image

  Widget _foodImage(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.6;

    return SizedBox(
      width: double.infinity,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/img.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stacktrace) =>
                  const Center(child: Icon(Icons.broken_image)),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: height * 0.8,
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      const Color.fromRGBO(138, 71, 235, 100).withOpacity(1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _signInUp() {
    final double currBorderRadius = 5.0;
    final Color thirdpartyTextButtonSocialColor = Colors.black;
    final Color thirdpartyTextButtonBackgroundColor = Colors.white;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(currBorderRadius),
                ),
                elevation: 6,
                minimumSize: const Size.fromHeight(48),
              ),
              onPressed: () {},
              child: Text(
                'Sign up with Email',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16),
          textDivider('or use social sign up'),
          const SizedBox(height: 16),
          SizedBox(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: thirdpartyTextButtonBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(currBorderRadius),
                ),
                elevation: 6,
                minimumSize: const Size.fromHeight(48),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.g_mobiledata,
                    color: thirdpartyTextButtonSocialColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Continue with Google',
                    style: TextStyle(
                      color: thirdpartyTextButtonSocialColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: thirdpartyTextButtonBackgroundColor,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(currBorderRadius),
                ),
                minimumSize: const Size.fromHeight(48),
                alignment: Alignment.center,
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.analytics, color: thirdpartyTextButtonSocialColor),
                  const SizedBox(width: 8),
                  Text(
                    'Continue with Facebook',
                    style: TextStyle(color: thirdpartyTextButtonSocialColor),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'Already have account? '),
                TextSpan(
                  text: 'Login',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('login button clicked');
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
