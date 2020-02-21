import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_notation/src/opacity/component.dart';

class OpacityNotation {
  static void show({
    @required BuildContext context,
    @required Widget child,
    double top,
    double bottom,
    Duration duration = const Duration(seconds: 5),
    Duration delay = const Duration(milliseconds: 300),
  }) {
    final Duration duration = Duration(seconds: 3);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return OpacityNotationComponent(
          child: child,
          duration: duration,
          delay: delay,
          top: top,
          bottom: bottom,
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
    Future.delayed(Duration(seconds: 3)).then((value) {
      overlayEntry.remove();
    });
  }
}
