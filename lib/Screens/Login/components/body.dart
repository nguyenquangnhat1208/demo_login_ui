import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginUi/Screens/Login/components/background.dart';
import 'package:loginUi/Screens/Signup/signup_screen.dart';
import 'package:loginUi/components/already_have_an_account_check.dart';
import 'package:loginUi/components/rounded_button.dart';
import 'package:loginUi/components/rounded_input_field.dart';
import 'package:loginUi/components/rounded_password_field.dart';
import 'package:loginUi/components/text_field_container.dart';
import 'package:loginUi/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset(
          'assets/icons/login.svg',
          height: size.height * 0.35,
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(text: "LOGIN", press: () {}),
        SizedBox(
          height: size.height * 0.03,
        ),
        AlreadyHaveAnAccount(
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignUpScreen();
            }));
          },
        ),
      ],
    )));
  }
}
