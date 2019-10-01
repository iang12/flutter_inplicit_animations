import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/login/button-widget..dart';

class WidgetLogin extends StatefulWidget {
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  bool _anime = false;
  _onTap(){
    setState(() {
      _anime = !_anime;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonWidget(
        onTap: _onTap,
        anime: _anime,
      ),
    );
  }
}
