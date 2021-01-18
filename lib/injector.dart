import 'package:get_it/get_it.dart';
import 'package:navigation2/GuestRegisterBloc/guest_register_bloc.dart';
import 'package:navigation2/bloc/bloc.dart';
import 'package:navigation2/guest_home_bloc/guest_home_bloc.dart';
import 'package:navigation2/widgets/guest_body_widget.dart';
import 'package:navigation2/widgets/guest_register_body_widget.dart';

final sl = GetIt.instance;

Future<void> init() {
  //! Features - Keep up

  //bloc
  sl.registerFactory(() => NavigationBloc());

  sl.registerFactory(() => GuestHomeBloc());

  sl.registerFactory(() => GuestRegisterBloc());

  sl.registerFactory(() => GuestHomeBody());

  sl.registerFactory(() => GuestRegisterBody());

}
