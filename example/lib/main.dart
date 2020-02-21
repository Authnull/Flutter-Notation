import 'package:flutter/material.dart';
import 'package:flutter_notation/flutter_notation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Notation'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      OpacityNotation.show(
                        context: context,
                        child: Text('123'),
                      );
                    },
                    child: Text('Show Opacity Notation'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
