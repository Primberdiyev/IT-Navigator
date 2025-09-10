import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/app.dart';
import 'package:it_navigator/firebase_options.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';

void initializeApp({Flavor? flavor}) {
  AppFlavor.flavor = flavor;

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}
