import 'package:flutter/material.dart';
import 'package:waseapp/components/custom_buttom_color.dart';
import 'package:waseapp/screens/Login/LoginScreen.dart';
import 'package:waseapp/screens/Registrasi/registrasiScreen.dart';
import 'package:waseapp/size_config.dart';
import 'package:waseapp/utils/conts.dart';
import 'package:waseapp/components/custom_surfix_icons.dart';

class RegistrasiForm extends StatefulWidget {
  @override
  _RegistrasiForm createState() => _RegistrasiForm();
}

class _RegistrasiForm extends State<RegistrasiForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController textUsername = TextEditingController(),
      textpassword = TextEditingController();

  FocusNode focusNode = new FocusNode();
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildName(),
        SizedBox(
            height: getProportionateScreenHeight(
                30)), // membuat jarak antara password dan juga username
        SizedBox(height: getProportionateScreenHeight(30)),
        buildUserName(),
        SizedBox(
            height: getProportionateScreenHeight(
                30)), // membuat jarak antara password dan juga username
        buildPassword(),
        SizedBox(
            height: getProportionateScreenHeight(
                30)), // membuat jarak antanra password dan lupa password
        //buttom
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "REGISTRASI",
          press: () {
            Navigator.pushNamed(context, LoginScreen.routName);
          }, //ketika buttom di klik maka akan ngapain
        ),
        SizedBox(height: 20)
      ],
    ));
  }

  // form nama
  TextFormField buildName() {
    return TextFormField(
      controller:
          textUsername, //ketika kita memasukan nilai ke dalam nilai makan akan di tampung di text controller
      keyboardType: TextInputType.text,
      style: mTitleStyle, //sudah ada di const
      decoration: InputDecoration(
          labelText: 'Name',
          hintText: 'Masukan Nama anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
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
      controller: textpassword, //agar text bintang bintang
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
