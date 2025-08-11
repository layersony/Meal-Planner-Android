import 'package:flutter/material.dart';

Widget appNaviBar() {
  return AppBar(
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
    bottom: PreferredSize(preferredSize: Size(0, 0), child: const SizedBox()),
  );
}
