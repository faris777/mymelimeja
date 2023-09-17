import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final String image; 
  const UserAvatar({super.key,this.size= 40 ,this.image = 'assets/images/user.jpg'});
 
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(image,width: size,height: size,));
  }
}