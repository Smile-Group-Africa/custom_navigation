import 'package:example/page_1.dart';
import 'package:example/page_2.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation/custom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Navigation"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MaterialButton(
                onPressed: () => context.push(Page1()),
                color: Colors.blue,
                child: Text('Go to Page 1', style: TextStyle(color: Colors.white),),
              ),
              MaterialButton(
                onPressed: () {
                  goToPage2(context);
                },
                color: Colors.blue,
                child: Text('Go to Page 2', style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  goToPage2(BuildContext context) async {
    String result = await context.push(Page2());
    print("back data = $result");
  }
}
