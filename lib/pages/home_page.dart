import 'package:flutter/material.dart';
import 'package:mymeimeja/styles/colors.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('5minute flutter'),
      backgroundColor: AppColor.background,
      actions: [Icon(Icons.location_on_outlined)],),
      body: Container()
    );
  }
}