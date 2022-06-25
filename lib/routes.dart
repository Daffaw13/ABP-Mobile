import 'package:flutter/material.dart';
import 'package:waseapp/screens/Login/LoginScreen.dart';
import 'package:waseapp/screens/Registrasi/RegistrasiScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routName: (context) => LoginScreen(),
  RegistrasiScreen.routName: (context) => RegistrasiScreen()
};
