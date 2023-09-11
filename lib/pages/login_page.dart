

import 'package:flutter/material.dart';
import 'package:mymeimeja/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
    SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(padding: EdgeInsets.all(24),child:
        Column(
        children: [
        SizedBox(height: 50,),
          const Text('HELLO, Willocome ' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
        SizedBox(height: 16,),
        const Text('log in to continue',style: TextStyle(color: Colors.white,),),
        const SizedBox(height: 20),
        TextField(decoration: InputDecoration(hintText: 'Username',border:   OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12),
        ),
        ),
        filled: true,
         fillColor: Colors.white.withOpacity(0.5),
         ),
         ),
         SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(hintText: 'password',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12),
          ),
          )
          ,filled: true, 
          fillColor: Colors.white.withOpacity(0.5))),
        // ignore: avoid_print
         Align( alignment: Alignment.centerRight,
        child:TextButton(onPressed:forgetten,
         child: Text('forget password'),style: TextButton.styleFrom(foregroundColor: Colors.white),),)
        ,SizedBox(height: 30,),
        SizedBox(width: double.infinity,height: 48,
          child:
        ElevatedButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/main'),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,foregroundColor: Colors.black),child: const Text('Login'),),),
        const Text('or sign up with',style: TextStyle(color: Colors.white),),
        SizedBox(height: 40,),
           
         
         SizedBox(
          height: 48,
           child: ElevatedButton(onPressed: google,child: Row(children: [
              Image.asset("assets/images/facebook.png", width: 22,height: 22,),
              const Text('Log in with Facebook'),],mainAxisAlignment: MainAxisAlignment.center),style: ElevatedButton.styleFrom(foregroundColor: const Color.fromRGBO(0, 0, 0, 1),backgroundColor:Colors.white ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50),),
              ),
              ),),
         ),
         SizedBox(height: 12,),
         SizedBox(
          height: 48,
           child: ElevatedButton(onPressed: google, child: Row(children: [ Image.asset('assets/images/google.png',width:22,height: 22,),
           Text('Log in with Google'),],mainAxisAlignment: MainAxisAlignment.center,),style: ElevatedButton.styleFrom(foregroundColor: Colors.black,backgroundColor:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))) ),),
         )
          ,
        Row(children: [
        const Text("Don't have Account?",style: TextStyle(color: Colors.white),),
        TextButton(onPressed: (){print('sign up clicked');}, child: Text('Sign Up',style: TextStyle(decoration: TextDecoration.underline ),),style: TextButton.styleFrom(foregroundColor: Colors.amber),)
        ],mainAxisAlignment: MainAxisAlignment.start,),])
           ,
          ),
      ),
    ),);}
}
MyApp()=>print('hello world');
void forgetten()=>print('forgetten app');
void google()=>print('google');