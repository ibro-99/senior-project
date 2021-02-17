import 'package:flutter/material.dart';

class Moreinfo extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MoreinfoState();
  }
}

class MoreinfoState extends State<Moreinfo> {
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
                            "More Information",
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
                                    hintText: "Country",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Reservation",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Neighborhood",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Telegram User",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("Home");
                          },
                          child: Center(
                            child: Text(
                              "Submit",
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
