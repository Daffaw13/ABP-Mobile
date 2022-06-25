import 'package:flutter/material.dart';
import 'package:waseapp/screens/Registrasi/RegistrasiComponent.dart';
import 'package:waseapp/size_config.dart';

class RegistrasiScreen extends StatelessWidget {
  static String routName = "/Daftar";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: RegistrasiComponent());
  }
}
