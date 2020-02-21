import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_notation/src/opacity/component.dart';

class OpacityNotation {
  static void show({
    @required BuildContext context,
    @required Widget child,
  }) {
    OverlayEntry overlayEntry = new OverlayEntry(
      builder: (context) {
        return OpacityNotationComponent(
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
