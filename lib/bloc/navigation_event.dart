import 'package:equatable/equatable.dart';

abstract class NavigationEvent extends Equatable{
  NavigationEvent([List props = const <dynamic>[]] ) : super(props);
}

class CheckUserStatusEvent extends NavigationEvent{}
class LoginUserEvent extends NavigationEvent{}
class SignUpEvent extends NavigationEvent{}
class LogOutEvent extends NavigationEvent{}
class ResetPasswordEvent extends NavigationEvent{}

