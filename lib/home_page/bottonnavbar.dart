import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxway/backet_page/backet_page.dart';
import 'package:maxway/home_page/home_page.dart';

import '../person_page/person_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int activBar=0;
  List pages=[];
  @override
  void initState() {
    activBar=0;
    pages=[
      HomePage(),
      BacketPage(),
      PersonPage(),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: pages[activBar],
    bottomNavigationBar: BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontSize: 15,color: Color(0xff51267D)),
        currentIndex: activBar,
      
        onTap: ((value) {
          activBar = value;
          
          setState(() {});
        }),
        
        selectedItemColor:Color(0xff51267D),
        items:  [
          
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/icons/ic_home_active1.svg"),
              icon:SvgPicture.asset("assets/icons/ic_home.svg"), label: "Главная",),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/icons/ic_backet_active.svg"),
              icon: SvgPicture.asset("assets/icons/ic_backet.svg"), label: "Мои заказы"),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/icons/ic_person_active.svg"),
            icon: SvgPicture.asset("assets/icons/ic_person.svg"), label: "Личное"),
        ]),
   ); 



    
    
  }
}