import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/bloc/bloc.dart';
import 'package:navigation2/screens/GuestHome.dart';
import 'package:navigation2/screens/Home.dart';
import 'package:navigation2/screens/SignupScreen.dart';
import 'package:navigation2/screens/SplashScreen.dart';
import 'package:navigation2/widgets/guest_body_widget.dart';

class MyRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  bool showOtherPage = false;
  final GlobalKey<NavigatorState> navigatorKey;
  List<Page> pageList = [];

  ///////////////////////////// Pages /////////////////////////////////

  Page page1 = MaterialPage(child: Scaffold(

    body: Center(child: Text('Navigator 2.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),),
  ), key: ValueKey('/splash_home'));

  /////////////////////////////////////////////////////////////////////
  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if(state is EmptyState){

          //check user status
          BlocProvider.of<NavigationBloc>(context).dispatch(CheckUserStatusEvent());
          //Add SplashScreen to navigation stack
         // pageList.add(MaterialPage(child: SplashScreen(), key: ValueKey('/splash_screen')));
          pageList.add(page1);

        } else if(state is GuestState){

          //Add Guest Home screen to navigation stack and remove splash screen.
          pageList.add(MaterialPage(child: GuestHomeScreen(), key: ValueKey('/guest_home')));
        }else if(state is UserState){

          //Add home page and remove splash screen from stack
          pageList.removeLast();
          pageList.add(MaterialPage(child: HomeScreen(), key: ValueKey('/user_home')));
        }
        return Navigator(
          key: navigatorKey,
          pages: pageList,
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;
            pageList.removeLast();
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