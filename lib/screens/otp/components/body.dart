import 'package:flutter/material.dart';
import 'package:qazo_namozlar/size_config.dart';
import 'otm_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const Text("+998 ** *** ** 67 raqamiga tasdiqlash kodi yuborildi",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              // buildTimer(),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}