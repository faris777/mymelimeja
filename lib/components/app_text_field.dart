import 'package:flutter/material.dart';
import 'package:mymeimeja/styles/colors.dart';
class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField ({super.key,required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle:const TextStyle(color:Colors.white),
             filled: true,
         fillColor: AppColor.FieldColor,
      border: const UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12),
        ),
        ),
      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(12)),
    
      )
         ),
    );
  }
}