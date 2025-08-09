import 'package:flutter/material.dart';
import 'package:mealplanner/widgets/onboardingstep0.dart';
import 'package:mealplanner/widgets/onboardingstep1.dart';
import 'package:mealplanner/widgets/onboardingstep2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingState createState() => OnboardingState();
}

class OnboardingState extends State<OnboardingScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: getCurrentPage(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (currentPage > 0)
              ElevatedButton(
                onPressed: goPrev,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Prev',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            else
              const SizedBox(),

            if (currentPage < 2)
              ElevatedButton(
                onPressed: goNext,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(138, 71, 235, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget getCurrentPage() {
    if (currentPage == 0) {
      return onboarding0(context);
    } else if (currentPage == 1) {
      return Onboarding1();
    } else {
      return onboarding2();
    }
  }

  void goNext() {
    setState(() {
      if (currentPage < 2) {
        currentPage++;
      }
    });
  }

  void goPrev() {
    setState(() {
      if (currentPage > 0) {
        currentPage--;
      }
    });
  }
}
