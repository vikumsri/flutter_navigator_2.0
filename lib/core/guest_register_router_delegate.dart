import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/GuestRegisterBloc/guest_register_bloc.dart';
import 'package:navigation2/GuestRegisterBloc/register_bloc.dart';

class GuestRegisterRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  bool showOtherPage = false;
  final GlobalKey<NavigatorState> navigatorKey;
  List<Page> guestRegPageList = [];

  GuestRegisterRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  ////////////////////////////// Pages /////////////////////////////////////

  Page registerPage = MaterialPage(child: Scaffold(
  appBar: AppBar(
  title: Text('Guest Home'),
  ),
  body: Center(
  child: Text('Register Page'),)
  ), key: ValueKey('/guest_home'));

  /////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<GuestRegisterBloc, GuestRegisterState>(
      builder: (context, state) {
        if(state is GuestRegisterEmptyState){

          guestRegPageList.add(registerPage);

        } else if(state is GuestPasswordResetReadyState){

          //add password rest page to page stack.

        }
        return Navigator(
          key: navigatorKey,
          pages: guestRegPageList,
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;
            guestRegPageList.removeLast();
            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }

}