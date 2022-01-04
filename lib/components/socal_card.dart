import 'package:flutter/material.dart';

import '../size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.text,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final Function? press;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        //padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(62),
        width: getProportionateScreenWidth(140),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(icon!),
            Text(text!,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}