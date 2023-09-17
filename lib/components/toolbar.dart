import 'package:flutter/material.dart';
import '../styles/colors.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget{
  final String title ;
  final List<Widget>? actions;
 const  Toolbar({super.key,required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title),
      backgroundColor: AppColor.background,
      centerTitle: false,
      actions: actions);
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(64);
  
}