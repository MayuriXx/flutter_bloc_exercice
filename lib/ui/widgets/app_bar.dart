import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String titleAppBar;

  MyAppBar({Key? key, required this.titleAppBar})
      : super(key: key, 
          title: Text(
            titleAppBar,
          ),
          centerTitle: true,
        );
}
