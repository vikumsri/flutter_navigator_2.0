import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation2/guest_home_bloc/guest_home_bloc.dart';
import 'package:navigation2/guest_home_bloc/guest_home_bloc.dart';
import 'package:navigation2/guest_home_bloc/guestbloc.dart';

class GuestHomeBody extends StatefulWidget {
  @override
  _GuestHomeBodyState createState() => _GuestHomeBodyState();
}

class _GuestHomeBodyState extends State<GuestHomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Welcome',
        style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.w900
        ),),
        Image.asset(
            'assets/guest.jpg'),
        SizedBox(
          height: 20.0,
        ),
        Button(
          color: Colors.red[400],
          event: GuestLoginPressedEvent(),
          buttonText: 'Login',
        ),
        SizedBox(
          height: 10.0,
        ),
        Button(
          color: Colors.black,
          event: GuestRegisterPressedEvent(),
          buttonText: 'Register',
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  final Color color;
  final GuestHomeEvent event;
  final buttonText;

  const Button({
    Key key, @required this.color, @required this.event, @required this.buttonText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 60.0,
      child: RaisedButton(
        onPressed: () => BlocProvider.of<GuestHomeBloc>(context)
            .dispatch(event),
        color: color,
        padding: EdgeInsets.all(5.0),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,),
        ),
      ),
    );
  }
}
