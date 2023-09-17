import 'package:flutter/material.dart';
import 'package:mymeimeja/pages/edit_profile_page.dart';
import 'package:mymeimeja/pages/home_page.dart';
import 'package:mymeimeja/pages/login_page.dart';
import 'package:mymeimeja/pages/main_page.dart';
import 'package:mymeimeja/styles/colors.dart';
void main() => runApp(MyApp1());
class MyApp1 extends StatelessWidget {
   MyApp1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColor.background,fontFamily: 'Urbanist',brightness: Brightness.dark),
  initialRoute: '/',
  routes: {
    '/':(context) => LoginPage(),
    '/home':(context) => HomePage(),
    '/main':(context) => MainPage(),
    '/edit_profile':(context) => EditProfile()
  },);
  }
}
