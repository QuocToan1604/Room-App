import 'package:flutter/material.dart';
import 'package:roome_app/components/bottom_bar.dart';
import 'package:roome_app/page/details_page.dart';
import 'package:roome_app/page/get_started.dart';
import 'package:roome_app/page/home_page.dart';
import 'package:roome_app/page/log_and_reg.dart';
import 'package:roome_app/page/login_page.dart';
import 'package:roome_app/page/sign_up.dart';
import 'package:roome_app/page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: GetStartedPage(),
      //  home: LoginAndRegister()
      // home: LoginPage(),
      // home: HomePage(),
      // home: SplashPage(),
      // home: Details_Page(),
      // home: SignUpPage(),
      // home: BottomBar(),
    );
  }
}
