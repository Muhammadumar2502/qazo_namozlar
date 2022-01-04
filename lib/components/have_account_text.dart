import 'package:flutter/material.dart';
import 'package:qazo_namozlar/screens/sign_in/sign_in_page.dart';
import '../constants.dart';
import '../size_config.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Yangimisiz? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16),fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
          child: Text(
            "Ro'yxatdan o'ting",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}