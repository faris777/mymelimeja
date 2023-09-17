
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mymeimeja/styles/colors.dart';
import 'package:mymeimeja/styles/text.dart';
import '../components/post_pages.dart';
import '../components/toolbar.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
List <String> user = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: '5minute flutter',actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/svg/ic_location.svg'),),
      ],),
      body: ListView.builder(itemBuilder: (context, index){
       return const AppPost();
      }));
  }
 mockingUsers(){
        
        for(int i = 0 ; i < 1000; i ++){
            user.add('user number is $user');
        }
  }
  
}


