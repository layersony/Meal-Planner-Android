import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _topimages(),
          const SizedBox(height: 16),
          _centerText(),
          const SizedBox(height: 16),
          _bottomNavigation(),
        ],
      ),
    );
  }

  // top images
  Widget _topimages() {
    return Image.asset('assets/images/img2.jpg');
  }

  // center text
  Widget _centerText() {
    return Text('_centerText');
  }

  // button navigation
  Widget _bottomNavigation() {
    return Text('_bottomNavigation');
  }
}
