import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Toast {
  static void show({
    @required BuildContext context,
    @required String message,
  }) {
    print(context);
    print(Overlay.of(context));
    // OverlayEntry overlayEntry = new OverlayEntry(
    //   builder: (context) {
    //     return new Positioned(
    //       top: MediaQuery.of(context).size.height * 0.7,
    //       child: new Material(
    //         child: new Container(
    //           width: MediaQuery.of(context).size.width,
    //           alignment: Alignment.center,
    //           child: new Center(
    //             child: new Card(
    //               child: new Padding(
    //                 padding: EdgeInsets.all(8),
    //                 child: new Text(message),
    //               ),
    //               color: Colors.grey,
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
    // Overlay.of(context).insert(overlayEntry);
    // new Future.delayed(Duration(seconds: 2)).then((value) {
    //   overlayEntry.remove();
    // });
  }
}

class FlutterNotation {
  static const MethodChannel _channel = const MethodChannel('flutter_notation');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
