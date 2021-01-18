import 'package:flutter/material.dart';
import 'package:navigation2/screens/GuestHome.dart';
import 'package:navigation2/screens/SignupScreen.dart';
import 'package:navigation2/screens/SplashScreen.dart';
import 'injector.dart' as di;

import 'bloc/navigation_bloc.dart';

Future<void> main() async {
  await di.init();
  runApp(SplashScreen());
}


