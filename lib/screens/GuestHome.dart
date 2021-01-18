import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/core/guest_router_delegate.dart';
import 'package:navigation2/guest_home_bloc/guest_home_bloc.dart';
import 'package:navigation2/guest_home_bloc/guestbloc.dart';
import 'package:navigation2/injector.dart';

class GuestHomeScreen extends StatefulWidget {
  @override
  _GuestHomeScreenState createState() => _GuestHomeScreenState();
}

class _GuestHomeScreenState extends State<GuestHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GuestHomeBloc>(
      builder: (_) => sl<GuestHomeBloc>(),
      child: MaterialApp(
        home: Router(
          routerDelegate: GuestRouterDelegate(),
        ),
      ),
    );
  }
}
