import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget{
 SocialPage({key}) : super(key: key);

@override
_SocialPageState createState() => _SocialPageState();

}

class _SocialPageState extends State<SocialPage> {

  @override
  Widget build(BuildContext context){
  return Scaffold(

    appBar: AppBar(
      title: Text('Social'),
      ),

    body: ListView.builder(
      itemCount: 500,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text('Notification no. ${index + 1}'),
                Text('This will be the notification of the application')
              ],
              
            ),
          ),
        );
       }),
    );
  }
}