import 'package:flutter/material.dart';
import 'package:qazo_namozlar/components/have_account_text.dart';
import 'package:qazo_namozlar/components/no_account_text.dart';
import 'package:qazo_namozlar/components/socal_card.dart';
import 'package:qazo_namozlar/screens/sign_up/components/sign_up_form.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                // Akkauntga kirish va logo qismi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Akkauntga kirish",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Logo uchun
                    Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image/Vector.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignUpForm(),
                SizedBox(height: getProportionateScreenHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/image/super g.png",
                      text: "Google",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/image/fb icon.png",
                      text: "Facebook",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(25)),
                const HaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}