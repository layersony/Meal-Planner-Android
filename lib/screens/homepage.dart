import 'package:flutter/material.dart';
import 'package:mealplanner/screens/profile.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  HomepageScreenState createState() => HomepageScreenState();
}

class HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                icon: Icon(Icons.person),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            ],
          ),
        ),
        body: Column(
          children: [
            // todays progress card
            _todayProgressCard(),
            // Images with links to recipes
          ],
        ),
        bottomNavigationBar: Text('bottom nav'),
      ),
    );
  }

  // todays progress card
  Widget _todayProgressCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today\'s Progress',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Text('View More'),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [Text('Calories'), Text('1,284')]),
                Row(
                  children: [
                    Text('Fat 29%'),
                    const SizedBox(width: 5.0),
                    Text('Fat 29%'),
                    const SizedBox(width: 5.0),
                    Text('Fat 29%'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
