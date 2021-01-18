import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/guest_home_bloc/guest_home_bloc.dart';
import 'package:navigation2/guest_home_bloc/guestbloc.dart';
import 'package:navigation2/screens/SignupScreen.dart';
import 'package:navigation2/widgets/guest_body_widget.dart';

class GuestRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {

  bool showOtherPage = false;
  final GlobalKey<NavigatorState> navigatorKey;
  List<Page> guestPageList = [];
  GuestRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();


  ////////////////////// Pages ///////////////////////////////////

  //Guest Home page
  Page guestHome = MaterialPage(child: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('Guest Home'),
    ),
    body: GuestHomeBody(),
  ), key: ValueKey('/guest_home'));

  //Register page
  Page registerPage = MaterialPage(child: GuestRegisterScreen(),key: ValueKey('/guest_register'));

  //TODO Create Login Page

  //////////////////////////////////////////////////////////////


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GuestHomeBloc, GuestHomeState>(
      builder: (context, state) {

        if(state is GuestEmptyState){

          //adding homepage to page stack
          guestPageList.add(guestHome);

          ///Following block event dispatch will change the app state from GuestEmptyState to GuestRegisterReadyState
          // --> BlocProvider.of<GuestHomeBloc>(context).dispatch(GuestRegisterPressedEvent());

        } else if(state is GuestLoginReadyState){

          //TODO add login page to the guestPage List


        }else if(state is GuestRegisterReadyState){

          //adding homepage and register page to page stack
          guestPageList.add(guestHome);
          guestPageList.add(registerPage);

        }
        //returning navigator with the given page stack
        return Navigator(
          key: navigatorKey,
          pages: guestPageList,
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;
            //remove the page on top of the stack if pop is successful
            guestPageList.removeLast();
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