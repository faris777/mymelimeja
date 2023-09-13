import 'package:flutter/material.dart';
import 'package:mymeimeja/styles/text.dart';
class AppProfile extends StatelessWidget {
  const AppProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
           const SizedBox(height:60),
           Image.asset('assets/temp/user1.png',width: 90,height: 90,),
           const Text('Faris Ahmed Yahya',style: AppText.header2,),
           const SizedBox(height: 20,),
           const Text('Bremen',style: AppText.subtitle2,),
           const SizedBox(height: 20,),
           const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('110',style: AppText.header2,),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text('20',style: AppText.header2,),
                  Text('Post'),
                ],
              ),
              Column(
                children: [
                  Text('1010',style: AppText.header2,),
                  Text('Following'),
                ],
              )
              , Divider(thickness: 1,height: 24,)
      ])
      ],
    
      
      )
    );
  }
}