import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import 'package:seefar_mobile_app/services/auth.dart';
//import 'package:seefar_mobile_app/models/user.dart';
import 'package:seefar_mobile_app/screens/wrapper.dart';
import 'package:seefar_mobile_app/shared/seefar_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return StreamProvider<User>.value(
      //value: AuthService().user,
      return MaterialApp(
        //child: MaterialApp(
        title: 'Seefar Mobile App',
        theme: basicTheme(),
        home: Wrapper(),
      );
    //);
  }
}
