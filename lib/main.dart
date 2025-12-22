import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app_with_getx/my_app.dart';

void main() {
  /// widgets flutter binding
  WidgetsFlutterBinding.ensureInitialized();
  // flutter native splash
 // FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding);

 // portrait up the device
 SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}






