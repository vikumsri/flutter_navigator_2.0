
import 'package:equatable/equatable.dart';

abstract class GuestRegisterEvent extends Equatable{

  GuestRegisterEvent([List props = const <dynamic>[]]) : super(props);
}

class GuestRegisterPressedEvent extends GuestRegisterEvent{}

class GuestPasswordResetLinkPreesedEvent extends GuestRegisterEvent{}


