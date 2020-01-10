import 'package:flutter/material.dart';

import 'package:perawatankkj/context/anjg.dart';
import 'package:perawatankkj/context/rawat.dart';
import 'package:perawatankkj/context/kurawat.dart';
import 'package:perawatankkj/context/anjgrawat.dart';
import 'package:loader_search_bar/loader_search_bar.dart'; 




class Perawatananjg extends StatefulWidget {
  static const routeName = '/Perawatananjg';
  @override
  PerawatananjgState createState()=> new PerawatananjgState();
}

class PerawatananjgState extends State<Perawatananjg> {

 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text('Pet Day Care',
          style: TextStyle(
            color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightGreen,
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 15.0,
              ),
              
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('images/food1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                      
                      RaisedButton(
                        color: Colors.pinkAccent,
                        child: Text('Perawatan 1'),
                        onPressed: () {
                          Navigator.pushNamed(context, Rawat.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('images/nutri1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                     
                      RaisedButton(
                        color: Colors.pinkAccent,
                        child: Text('Perawatan 2'),
                        onPressed: () {
                          Navigator.pushNamed(context, Anjg.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('images/wash1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                     
                      RaisedButton(
                        color: Colors.pinkAccent,
                        child: Text('Perawatan 3'),
                        onPressed: () {
                          Navigator.pushNamed(context, Anjgrawat.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('images/train1.jpg',
                      height: 125,
                      width: 200,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text('',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            ),
                            softWrap: true,),
                          ),
                        ],
                      ),
                     
                      RaisedButton(
                        color: Colors.pinkAccent,
                        child: Text('Perawatan 4'),
                        onPressed: () {
                          Navigator.pushNamed(context, Kurawat.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 15,
          ),
        ],
      ),
    );
  }
}