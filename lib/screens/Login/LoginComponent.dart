import 'package:flutter/Material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:waseapp/screens/Login/LoginForm.dart';
import 'package:waseapp/size_config.dart';
import 'package:waseapp/utils/conts.dart';

class LoginComponent extends StatefulWidget {
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SimpleShadow(
                  child: Image.asset("assets/images/tour.png",
                      height: 150, width: 202),
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LOGIN",
                          style: mTitleStyle,
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ), //memberi jarak antara tulisan login ke login form
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
