import 'package:flutter/material.dart';

Widget onboarding0(BuildContext context) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        _topimages(context),
        const SizedBox(height: 16),
        _centerText(),
      ],
    ),
  );
}

// top images
Widget _topimages(BuildContext context) {
  return Image.asset(
    'assets/images/onboarding.jpg',
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.4,
  );
}

// center text
Widget _centerText() {
  return Column(
    children: [
      Text(
        'Enjoy your lunch time',
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Just relax and not overthink what to \neat. This is in our side with our \npersonalized meal plans just prepared \nand adapted to your needs',
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
