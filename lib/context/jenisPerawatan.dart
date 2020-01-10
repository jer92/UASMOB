import 'package:flutter/material.dart';
import 'package:perawatankkj/context/cheers.dart';
import 'package:perawatankkj/context/fresh.dart';
import 'package:perawatankkj/context/healing.dart';
import 'package:perawatankkj/context/sembuh.dart';
import 'package:loader_search_bar/loader_search_bar.dart'; 




class JenisPerawatan extends StatefulWidget {
  static const routeName = '/JenisPerawatan';
  @override
  JenisPerawatanState createState()=> new JenisPerawatanState();
}

class JenisPerawatanState extends State<JenisPerawatan> {

 
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
                      Image.asset('images/kucingsakit.jpg',
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
                          Navigator.pushNamed(context, Sembuh.routeName);
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
                      Image.asset('images/perawat2.jpg',
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
                          Navigator.pushNamed(context, Healing.routeName);
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
                      Image.asset('images/perawat3.jpg',
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
                          Navigator.pushNamed(context, Fresh.routeName);
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
                      Image.asset('images/dokterkucing.jpg',
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
                          Navigator.pushNamed(context, Cheers.routeName);
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