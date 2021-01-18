
import 'package:equatable/equatable.dart';

abstract class GuestRegisterState extends Equatable{
  GuestRegisterState([List props = const <dynamic>[]]) : super(props);
}

class GuestRegisterInitial extends GuestRegisterState {}

class GuestRegisterEmptyState extends GuestRegisterState {}

class GuestRegisteringState extends GuestRegisterState {}

class GuestPasswordResetReadyState extends GuestRegisterState {}
