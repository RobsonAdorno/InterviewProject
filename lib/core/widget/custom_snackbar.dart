import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSnackBar {
  static final snackGlobalKey = GlobalKey<ScaffoldState>();

  static void openSnackBar(String text, Color color) {
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: color,
      duration: Duration(microseconds: 500),
    );
    snackGlobalKey.currentState.showSnackBar(snackBar);
  }
}
