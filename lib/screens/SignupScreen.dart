import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/GuestRegisterBloc/guest_register_bloc.dart';
import 'package:navigation2/core/guest_register_router_delegate.dart';
import '../injector.dart';

class GuestRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GuestRegisterBloc>(
      builder: (_) => sl<GuestRegisterBloc>(),
      child: MaterialApp(
        home: Router(
          routerDelegate: GuestRegisterRouterDelegate(),
        ),
      ),
    );
  }
}
