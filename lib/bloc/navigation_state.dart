import 'package:equatable/equatable.dart';

abstract class NavigationState extends Equatable{
  NavigationState([List props = const <dynamic>[]]) : super(props);
}

class NavigationInitial extends NavigationState {}

class EmptyState extends NavigationState{}
class GuestState extends NavigationState{}
class UserState extends NavigationState{}
class LoadingState extends NavigationState{}
class LoadedState extends NavigationState{}
