import 'package:flutter/Material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:waseapp/screens/Registrasi/RegistasiFrom.dart';
import 'package:waseapp/size_config.dart';
import 'package:waseapp/utils/conts.dart';

class RegistrasiComponent extends StatefulWidget {
  _RegistrasiComponent createState() => _RegistrasiComponent();
}

class _RegistrasiComponent extends State<RegistrasiComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "REGISTRASI",
                          textAlign: TextAlign.center,
                          style: mTitleStyle,
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ), //memberi jarak antara tulisan login ke login form
                RegistrasiForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
