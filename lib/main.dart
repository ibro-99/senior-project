import 'package:flutter/material.dart';
import 'package:myflutter_app/Pages/home_page.dart';
import 'package:myflutter_app/createAcount.dart';
import 'package:myflutter_app/intro.dart';
import 'package:myflutter_app/login.dart';
import 'package:myflutter_app/moreinfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardingScreen(),
      routes: {
        'login': (context) => Login(),
        'moreinfo': (context) => Moreinfo(),
        'Rgistration': (context) => Regisration(),
        'Home': (context) => HomePage(),
      },
    );
  }
}
