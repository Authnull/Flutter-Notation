import 'package:flutter/material.dart';
import 'package:flutter_notation/flutter_notation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Builder(
            builder: (BuildContext context) {
              return RaisedButton(
                onPressed: () {
                  OpacityNotation.show(
                    context: context,
                    child: Text('123'),
                  );
                },
                child: Text('Show'),
              );
            },
          ),
        ),
      ),
    );
  }
}
