import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_notation/src/opacity/component.dart';

class OpacityNotation {
  static void show({
    @required BuildContext context,
    @required String title,
  }) {
    OverlayEntry overlayEntry = new OverlayEntry(
      builder: (context) {
        return OpacityNotationComponent(
          title: title,
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
    new Future.delayed(Duration(seconds: 3)).then((value) {
      // overlayEntry.remove();
    });
  }
}
