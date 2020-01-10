import 'package:flutter/material.dart';
import 'package:perawatankkj/context/bingo.dart';
import 'package:perawatankkj/context/burdizzo.dart';

import 'package:perawatankkj/context/happy.dart';
import 'package:perawatankkj/context/sallo.dart';

import 'package:loader_search_bar/loader_search_bar.dart'; 




class Klinik extends StatefulWidget {
  static const routeName = '/Klinik';
  @override
  KlinikState createState()=> new KlinikState();
}

class KlinikState extends State<Klinik> {

 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text('Klinik hewan',
          style: TextStyle(
            color: Colors.orange,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.brown,
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
                      Image.asset('images/klinik3.jpg',
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
                        child: Text('BURDIZZO'),
                        onPressed: () {
                          Navigator.pushNamed(context, BURDIZZO.routeName);
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
                      Image.asset('images/bingo.jpg',
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
                        child: Text('Bingo'),
                        onPressed: () {
                          Navigator.pushNamed(context, Bingo.routeName);
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
                      Image.asset('images/sallo.jpg',
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
                        child: Text('Sallo'),
                        onPressed: () {
                          Navigator.pushNamed(context, Sallo.routeName);
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
                      Image.asset('images/happy.jpg',
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
                        child: Text('Happy'),
                        onPressed: () {
                          Navigator.pushNamed(context, Happy.routeName);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 15.0,
              ),

             
              Container(
                height: 15.0,
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