import 'package:flutter/material.dart';
import 'package:qazo_namozlar/size_config.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Raqamni tasdiqlash",
          style: TextStyle(color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: const Body(),
    );
  }
}