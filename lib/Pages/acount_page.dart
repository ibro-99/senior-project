import 'package:flutter/material.dart';

class AcountPage extends StatefulWidget{
 AcountPage({key}) : super(key: key);

@override
_AcountPageState createState() => _AcountPageState();

}

class _AcountPageState extends State<AcountPage> {

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('My Account'),
      ),
    

      );

  }

  
}
