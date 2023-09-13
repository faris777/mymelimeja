
import 'package:flutter/material.dart';
import 'package:mymeimeja/styles/colors.dart';
import 'package:mymeimeja/styles/text.dart';
import '../components/post_pages.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
List <String> user = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
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


