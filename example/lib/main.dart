import 'package:example/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:peek_and_pop_dialog/peek_and_pop_dialog.dart';

import 'pages/grid_view_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peek And Pop Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
