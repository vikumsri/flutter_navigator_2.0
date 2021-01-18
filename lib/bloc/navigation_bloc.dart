import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:navigation2/bloc/bloc.dart';
import 'package:navigation2/bloc/navigation_event.dart';

import 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {

  @override
  get initialState => EmptyState();

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    if(event is CheckUserStatusEvent){
      yield LoadingState();
      yield GuestState();
    }
  }


}
