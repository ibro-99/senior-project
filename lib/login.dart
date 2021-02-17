import 'package:flutter/material.dart';
import 'package:myflutter_app/Animation/FadeAnimation.dart';

class Login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 295,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-1.png'))),
                          )),
                      Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-2.png'))),
                          )),
                      Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/clock.png'))),
                          )),
                      Positioned(
                          child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              child: TextField(
                                style: TextStyle(fontSize: 18.0,color: Colors.blue),
                                decoration: InputDecoration(
                                  icon: new Icon(Icons.person),
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(fontSize: 18.0,color: Colors.blue),
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: new Icon(Icons.lock),
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                     FadeAnimation(1.5,
                       Container(
                      
                               child: GestureDetector(
                                onTap: () {
                                Navigator.of(context).pushNamed("Home");
                                },
                          child: Center(
                           child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ])),
                      ),
                      ),
                  
                      SizedBox(
                        height: 35,
                      ),
                      FadeAnimation(1.5, Text(
                        "Forgot Password?",
                        style:
                            TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("Rgistration");
                          },
                          child: Center(
                            child: FadeAnimation(1.5, Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Create New Account',
                                style: TextStyle(
                                  color: Color.fromRGBO(143, 148, 251, 1),
                                ),
                              ),
                            ),
                          ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
