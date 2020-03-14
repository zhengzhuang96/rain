library flutter_eui;

export "package:flutter_eui/widget/eui_flat_button.dart";
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterEui {
  static const MethodChannel _channel = const MethodChannel('flutter_eui');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
