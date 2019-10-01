import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function onTap;
  final bool anime;

  const ButtonWidget({Key key, this.onTap, this.anime}) : super(key: key);

  _textButton() {
    return Center(
      child: Text(
        'Fazer Login',
        style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.bounceOut,
        duration: Duration(milliseconds: 1000),
        width: anime  ? 50 : 200.0,
        height: 50.0,
        decoration: BoxDecoration(
            color: anime ? Colors.amber : Colors.blue,
            borderRadius: BorderRadius.circular(anime? 40.0 : 20.0),
            gradient: LinearGradient(begin: Alignment.topLeft, stops: [
              0.1,
              4.4
            ], colors: [
              Colors.greenAccent.withOpacity(.9),
              Colors.green.withOpacity(.5),
            ])),
        //child: anime? CircularProgressIndicator(backgroundColor: Colors.black ):  _textButton(),
        child: AnimatedCrossFade(
          duration: Duration(milliseconds: 500),
          firstChild: Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator()),
          secondChild: _textButton(),
          crossFadeState: anime? CrossFadeState.showFirst : CrossFadeState.showSecond
        ),
      ),
    );
  }
}
