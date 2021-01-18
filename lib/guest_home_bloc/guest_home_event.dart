import 'package:equatable/equatable.dart';

abstract class GuestHomeEvent extends Equatable{
  GuestHomeEvent([List props = const <dynamic>[]]) : super(props);
}

class GuestLoginPressedEvent extends GuestHomeEvent{}

class GuestRegisterPressedEvent extends GuestHomeEvent{}