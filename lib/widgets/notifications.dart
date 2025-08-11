import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  _Notifications createState() => _Notifications();
}

class _Notifications extends State<Notifications> {
  bool dailyReminders = false;
  bool motivation = false;
  bool guideline = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _topSection(),
          const SizedBox(height: 16.0),
          _middleSection(),
          const SizedBox(height: 16.0),
          _optionsSection(),
          const SizedBox(height: 100.0),
          _buttonSection(),
        ],
      ),
    );
  }

  Widget _topSection() {
    return Text(
      'Do you want to turn \non notifications?',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
        color: Colors.deepPurple,
      ),
      textAlign: TextAlign.start,
    );
  }

  Widget _middleSection() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black, width: 1),
      ),
      shadowColor: Colors.black,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.notifications, color: Colors.deepPurple),
                Text('now'),
              ],
            ),
            const SizedBox(height: 5.0),
            Text('Notification Title'),
            const SizedBox(height: 5.0),
            Text(
              'Notification text would be placed right here. This is where notification text would be placed.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String title, bool value, ValueChanged<bool> onChanged) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        children: [
          Icon(value ? Icons.check : Icons.check_box_outline_blank_outlined),
          SizedBox(width: 5),
          Text(title),
        ],
      ),
    );
  }

  Widget _optionsSection() {
    return Column(
      children: [
        _buildOption(
          'New daily meal reminders',
          dailyReminders,
          (val) => setState(() => dailyReminders = val),
        ),
        Divider(),
        _buildOption(
          'Motivational Messages',
          motivation,
          (val) => setState(() => motivation = val),
        ),
        Divider(),
        _buildOption(
          'Personalized guideline',
          guideline,
          (val) => setState(() => guideline = val),
        ),
      ],
    );
  }

  Widget _buttonSection() {
    return Center(
      child: FilledButton(
        onPressed: () {},
        child: Text('Enable'),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          fixedSize: Size(MediaQuery.of(context).size.width * 0.75, 15.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
