import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mymeimeja/pages/home_page.dart';
import 'package:mymeimeja/pages/profile_page.dart';
import 'package:mymeimeja/styles/colors.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: pages[i],
     bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_home.svg'),label: 'Home'),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),label: 'Favorite'),
         BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_add.svg'),label: 'Add Post'),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_messages.svg'),label: 'Message'),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_user.svg'),label: 'User')
     ],currentIndex: i,onTap: (value) {setState(() {
      i = value;
     });},
     type: BottomNavigationBarType.fixed,
     showSelectedLabels: false,
      showUnselectedLabels: false,backgroundColor:AppColor.white ,));
  }
  final pages = [
    HomePage(),
    const Center(child: Text('Favorite'),),
    const Center(child: Text('Add Post'),),
    const Center(child: Text('Message'),),
    const AppProfile(),
  ];
}