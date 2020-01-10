import 'package:flutter/material.dart';

import 'package:perawatankkj/context/royal.dart';
import 'package:loader_search_bar/loader_search_bar.dart'; 

import 'package:perawatankkj/context/makanan.dart';


class MakananKucing extends StatefulWidget {
  static const routeName = '/MakananKucing';
  @override
  MakananKucingState createState()=> new MakananKucingState();
}

class MakananKucingState extends State<MakananKucing> {

 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text('Makanan Khusus Perawatan',
          style: TextStyle(
            color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.yellow,
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
                      Image.asset('images/makanank2.jpg',
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
                        child: Text('RCrecovery'),
                        onPressed: () {
                          Navigator.pushNamed(context, Royal.routeName);
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
                      Image.asset('images/makanank3.jpg',
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
                        child: Text('Whiskas'),
                        onPressed: () {
                          Navigator.pushNamed(context, Makanan.routeName);
                        },
                      )
                    ],
                  ),
                ],
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