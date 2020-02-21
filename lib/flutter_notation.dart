import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNotation {
  static const MethodChannel _channel =
      const MethodChannel('flutter_notation');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
