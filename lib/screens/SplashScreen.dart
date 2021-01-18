import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/bloc/bloc.dart';
import 'package:navigation2/core/router_delegator.dart';
import 'package:provider/provider.dart';
import 'package:navigation2/injector.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
      builder: (_) => sl<NavigationBloc>(),
      child: MaterialApp(
        home: Router(
          routerDelegate: MyRouterDelegate(),
        ),
      ),
    );
  }
}
