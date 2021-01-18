import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:navigation2/GuestRegisterBloc/register_bloc.dart';



class GuestRegisterBloc extends Bloc<GuestRegisterEvent, GuestRegisterState> {

  @override
  GuestRegisterState get initialState => GuestRegisterEmptyState();

  @override
  Stream<GuestRegisterState> mapEventToState(
    GuestRegisterEvent event,
  ) async* {
  if(event is GuestPasswordResetLinkPreesedEvent){
    yield GuestPasswordResetReadyState();
  }
  }


}
