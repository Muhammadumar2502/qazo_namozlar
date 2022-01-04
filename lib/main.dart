import 'package:flutter/material.dart';
import 'package:qazo_namozlar/routes.dart';
import 'package:qazo_namozlar/screens/sign_in/sign_in_page.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      // home: SignUpScreen(),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}

