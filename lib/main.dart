import 'package:flutter/material.dart';

import 'login/login-widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: WidgetLogin(),
      ),
    );
  }
}