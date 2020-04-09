import 'package:flutter/material.dart';
import 'package:loginfirebase/models/user.dart';
import 'package:loginfirebase/screens/authenticate/authenticate.dart';
import 'package:loginfirebase/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    //return either home or authenticate widget
    if(user == null){
      return Authenticate();
    }
    else
      return Home();
  }
}
