import 'package:flutter/widgets.dart';
import 'package:qazo_namozlar/screens/otp/otp_screen.dart';
import 'package:qazo_namozlar/screens/sign_in/sign_in_page.dart';
import 'package:qazo_namozlar/screens/sign_up/sign_up_page.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
};