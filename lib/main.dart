import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app_with_getx/firebase_options.dart';
import 'package:shopping_app_with_getx/my_app.dart';

Future<void> main () async{
  /// widgets flutter binding
  WidgetsFlutterBinding.ensureInitialized();
  // flutter native splash
 // FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding);
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
 // portrait up the device
 SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}






