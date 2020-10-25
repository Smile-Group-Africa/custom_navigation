import 'package:flutter/material.dart';
import 'package:custom_navigation/custom_navigation.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                context.pop(value: "1");
              },
              color: Colors.blue,
              child: Text(
                'Send back 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () async {
                context.pop(value: "2");
              },
              color: Colors.blue,
              child: Text(
                'Send back 2',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
