import 'package:flutter/material.dart';
import 'package:mymeimeja/components/user_avatar.dart';
import 'package:mymeimeja/styles/text.dart';
import '../components/toolbar.dart';
enum Profilemenu {
  edit,
  logout
}
class AppProfile extends StatelessWidget {
  const AppProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Profile', actions: [
       PopupMenuButton<Profilemenu>(
        icon: const Icon(Icons.more_vert_outlined),
        onSelected: (value) {
            switch(value){
              case Profilemenu.edit:
                  Navigator.of(context).pushNamed('/edit_profile');
                  break;
              case Profilemenu.logout:
                  print('Log out');
                  break;
              default:
            }
        },
      itemBuilder: (context) {
      return [ const  PopupMenuItem(child: Text('Edit'),value: Profilemenu.edit,),
       const PopupMenuItem(child: Text('Log Out'), value: Profilemenu.logout,)];
     },)
      ],),
      body: const Column(children: [

             UserAvatar(size: 90,),
            Text('Faris Ahmed Yahya',style: AppText.header2,),
           SizedBox(height: 20,),
           Text('Bremen',style: AppText.subtitle2,),
           SizedBox(height: 20,),
          Row(
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