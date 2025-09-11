import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:it_navigator/app.dart';
import 'package:it_navigator/firebase_options.dart';
import 'package:it_navigator/modules/common_base/common_base.dart';
import 'package:it_navigator/modules/common_base/di/base_di_module.dart';
import 'package:it_navigator/modules/common_base/di/core_di_module.dart';

Future<void> initializeApp({Flavor? flavor}) async {
  AppFlavor.flavor = flavor;

  final coreDiModule = CoreDiModule();
  await BaseDiModule.initDi(coreDiModule);

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App(
    module: coreDiModule,
  ));
}
