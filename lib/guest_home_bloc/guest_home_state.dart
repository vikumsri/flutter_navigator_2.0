import 'package:equatable/equatable.dart';

abstract class GuestHomeState extends Equatable{
  GuestHomeState([List props = const <dynamic>[]]) : super(props);
}

class GuestHomeInitial extends GuestHomeState {}

class GuestLoginReadyState extends GuestHomeState {}

class GuestRegisterReadyState extends GuestHomeState {}

class GuestEmptyState extends GuestHomeState {}
