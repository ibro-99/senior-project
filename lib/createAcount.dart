import 'package:flutter/material.dart';

class Regisration extends StatefulWidget {
  State<StatefulWidget> createState() {
    return RegisrationState();
  }
}

class RegisrationState extends State<Regisration> {
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
                  height: 400,
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
                            "Regisration",
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
                                  blurRadius: 30.0,
                                  offset: Offset(0, 30))
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
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "First Name",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Last Name",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Phone Number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Confirm Password",
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
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ])),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("moreinfo");
                            },
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("login");
                          },
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "I Have Account",
                                style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
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
