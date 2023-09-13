import 'package:flutter/material.dart';
import '../styles/colors.dart';

class toolbar extends StatelessWidget {
  const toolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('5minute flutter'),
      backgroundColor: AppColor.background,
      centerTitle: false,
      actions:const [Icon(Icons.location_on_outlined)],);
  }
}