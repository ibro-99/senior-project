

import 'package:flutter/material.dart';
import 'package:myflutter_app/Pages/acount_page.dart';
import 'package:myflutter_app/Pages/add_page.dart';
import 'package:myflutter_app/Pages/aroundme_page.dart';
import 'package:myflutter_app/Pages/social_page.dart';

class HomePage extends StatefulWidget{
 HomePage({key}) : super(key: key);

@override
_HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
     AroundmePage(), AddPage(),  SocialPage(), AcountPage(),

  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context){
  return Scaffold(
  body: PageView(
   controller: _pageController,
   children: _screens,
  // onPageChanged: _onPageChanged,
   physics: NeverScrollableScrollPhysics(),
     ),

  bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        // onTap: _onItemTapped,
        
items: [
  
    
    BottomNavigationBarItem(
      label: ('Around me'),
      icon: Icon(Icons.location_on),
      
    ),

    BottomNavigationBarItem(
      label: ('Add'),
      icon: Icon(Icons.add),
      
    ),
    BottomNavigationBarItem(
      label: ('Social'),
      icon: Icon(Icons.notifications),
      
    ),
    BottomNavigationBarItem(
      label: ('Account'),
      icon: Icon(Icons.account_box),
      
    ),
  ],

  onTap: (index){
    setState((){
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  ),
  );
  }
  
}