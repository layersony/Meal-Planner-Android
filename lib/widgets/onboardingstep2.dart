import 'package:flutter/material.dart';

Widget onboarding2() {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.max,
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
  return Image.asset('assets/images/onboarding.jpg');
}

// center text
Widget _centerText() {
  return Column(
    children: [
      Text(
        'Enjoy your lunch time 2',
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Just relax and not overthink what to eat. This is in our side with our personalized meal plans just prepared and adapted to your needs',
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}

// button navigation
Widget _bottomNavigation() {
  return Text('_bottomNavigation');
}
