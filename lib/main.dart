import 'package:flutter/material.dart';

import 'instagram_ui_clone.dart';
import 'pages/main_page.dart';
import 'theme1.dart';
import 'theme2.dart';
import 'theme3.dart';
import 'theme4.dart';

void main() {
  runApp(MyApp());
}

//test

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.teal,
        // canvasColor: Colors.transparent
      ),
      home: ThemeFour(),
    );
  }
}
