import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_notation/src/opacity/component.dart';

class OpacityNotation {
  static void show({
    @required BuildContext context,
    @required Widget child,
  }) {
    final Duration duration = Duration(seconds: 3);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return OpacityNotationComponent(
          child: child,
          duration: duration,
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
    Future.delayed(Duration(seconds: 3)).then((value) {
      overlayEntry.remove();
    });
  }
}
