import 'dart:async';

import 'package:flutter/material.dart';

class OpacityNotation {
  static void show({
    @required BuildContext context,
    @required Widget child,
  }) {
    OverlayEntry overlayEntry = new OverlayEntry(
      builder: (context) {
        return new Positioned(
          top: MediaQuery.of(context).size.height * 0.7,
          child: child,
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
    new Future.delayed(Duration(seconds: 2)).then((value) {
      overlayEntry.remove();
    });
  }
}
