import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension NavigationUtils on BuildContext {
  Future push(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void pushReplacement(Widget page) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void clearPush(Widget page) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), ModalRoute.withName(""));
  }

  void pop({dynamic value}) {
    Navigator.pop(this, value);
  }
}
