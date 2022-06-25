import 'package:flutter/material.dart';
import 'package:waseapp/screens/Login/LoginComponent.dart';
import 'package:waseapp/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routName = "/Login";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}
