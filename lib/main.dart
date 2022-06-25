import 'package:flutter/material.dart';
import 'package:waseapp/routes.dart';
import 'package:waseapp/screens/Login/LoginScreen.dart';
import 'package:waseapp/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "WASE",
    theme: theme(),
    initialRoute: LoginScreen.routName, //class yang pertama kali di jalankan
    routes: routes,
  ));
}
