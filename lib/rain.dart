import 'dart:async';
import 'package:flutter/services.dart';
export 'package:rain/widget/rain_appbar.dart';
export 'package:rain/widget/rain_flat_button.dart';
export 'package:rain/widget/rain_cell.dart';

class Rain {
  static const MethodChannel _channel =
      const MethodChannel('rain');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
