import 'package:flutter/material.dart';
import 'package:waseapp/components/custom_buttom_color.dart';
import 'package:waseapp/screens/Registrasi/RegistrasiScreen.dart';
import 'package:waseapp/size_config.dart';
import 'package:waseapp/utils/conts.dart';
import 'package:waseapp/components/custom_surfix_icons.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? pssword;
  bool? pengingat = false;

  TextEditingController textUsername = TextEditingController(),
      textpassword = TextEditingController();

  FocusNode focusNode = new FocusNode();
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildUserName(),
        SizedBox(
            height: getProportionateScreenHeight(
                30)), // membuat jarak antara password dan juga username
        buildPassword(),
        SizedBox(
            height: getProportionateScreenHeight(
                30)), // membuat jarak antanra password dan lupa password
        Row(
          children: [
            Checkbox(
                value: pengingat,
                onChanged: (value) {
                  //ketika chackbox di clik dan value akan berubah menjadi true
                  setState(() {
                    pengingat =
                        value; // ninai pengingat yang awalnya flase menjadi true
                  });
                }),
            Text("Tetap Masuk!"),
            Spacer(), //menyesuaikan jarak dari kanan ke kiri
            GestureDetector(
              onTap: () {},
              child: Text(
                "Lupa Password?",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        //buttom
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "LOGIN",
          press: () {}, //ketika buttom di klik maka akan ngapain
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RegistrasiScreen.routName);
          },
          child: Text(
            "Belum punya akun? DAFTAR",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    ));
  }

// form username
  TextFormField buildUserName() {
    return TextFormField(
      controller:
          textUsername, //ketika kita memasukan nilai ke dalam nilai makan akan di tampung di text controller
      keyboardType: TextInputType.text,
      style: mTitleStyle, //sudah ada di const
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukan Username anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }

// form password
  TextFormField buildPassword() {
    return TextFormField(
      controller: textpassword,
      obscureText: true, //agar text bintang bintang
      style: mTitleStyle, //sudah ada di const
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }
}
