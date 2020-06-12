import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginUi/Screens/Login/login_screen.dart';
import 'package:loginUi/Screens/Signup/components/background.dart';
import 'package:loginUi/Screens/Signup/components/or_divider.dart';
import 'package:loginUi/Screens/Signup/components/social_icon.dart';
import 'package:loginUi/components/already_have_an_account_check.dart';
import 'package:loginUi/components/rounded_button.dart';
import 'package:loginUi/components/rounded_input_field.dart';
import 'package:loginUi/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(text: "SIGNUP", press: () {}),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccount(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              }),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              ),
            ],
          )
        ],
      ),
    ));
  }
}
