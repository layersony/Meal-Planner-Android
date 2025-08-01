import 'package:flutter/material.dart';

Widget textDivider(String text) {
  return Row(
    children: [
      const Expanded(child: Divider(thickness: 1, color: Colors.grey)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ),
      const Expanded(child: Divider(thickness: 1, color: Colors.grey)),
    ],
  );
}
