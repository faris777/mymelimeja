import 'package:flutter/material.dart';
import '../styles/text.dart';
class AppPost extends StatelessWidget {
  const AppPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
            Image.asset('assets/images/user.jpg',height: 40,width:40),
            const SizedBox(width: 16,),
            const Text('Kebede Debele',style:AppText.subtitle3,),
            ],
          ),
         const SizedBox(height: 12),
            Image.asset('assets/temp/post1.jpg'),
            const Text('The sun is beatiful nsakjnd aj dkjansdjnandand dai '),
        ],
      
      ),
    );
  }
}