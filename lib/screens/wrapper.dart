//import 'package:seefar_mobile_app/models/user.dart';
import 'package:seefar_mobile_app/screens/authenticate/authenticate.dart';
import 'package:seefar_mobile_app/screens/home.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = null; //Provider.of<User>(context);
    
    // return either the Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
    
  }
}