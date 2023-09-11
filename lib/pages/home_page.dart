
import 'package:flutter/material.dart';
import 'package:mymeimeja/styles/colors.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('5minute flutter'),
      backgroundColor: AppColor.background,
      centerTitle: false,
      actions: [Icon(Icons.location_on_outlined)],),
      body: ListView(children: mockingUsers()));
  }
  List<Widget> mockingUsers(){
        List <Widget> user = [];
        for(int i = 0 ; i < 1000; i ++){
            user.add(users());
        }
        return user;
  }
  Widget users(){
    return Row(
      children: [
      Image.asset('assets/images/user.jpg',height: 50,width:50),
      const SizedBox(width: 10,),
      const Text('Kebede Debele',style:TextStyle(color: Colors.white),),
      SizedBox(height: 10,)
      ],
    );
  }
}


