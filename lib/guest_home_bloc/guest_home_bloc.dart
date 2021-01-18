import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:navigation2/guest_home_bloc/guestbloc.dart';

class GuestHomeBloc extends Bloc<GuestHomeEvent, GuestHomeState> {

  @override
  GuestHomeState get initialState => GuestEmptyState();

  @override
  Stream<GuestHomeState> mapEventToState(
    GuestHomeEvent event,
  ) async* {
    if (event is GuestLoginPressedEvent) {
      yield GuestLoginReadyState();
    } else if (event is GuestRegisterPressedEvent) {
      yield GuestRegisterReadyState();
    }
  }


}
