import 'package:flutter/material.dart';

import 'package:perawatankkj/context/Klinik.dart';
import 'package:perawatankkj/context/jenisPerawatan.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:perawatankkj/context/kategori.dart'; 
import 'package:perawatankkj/context/mainadd.dart';
import 'package:perawatankkj/context/categories.dart';



class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  @override
  HomePageState createState()=> new HomePageState();
}

class HomePageState extends State<HomePage> {

 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text('Pet Day Care',
          style: TextStyle(
            color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
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
                    color: Colors.redAccent,
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
                        color: Colors.blue,
                        child: Text('Kucing'),
                        onPressed: () {
                          Navigator.pushNamed(context, Categories.routeName);
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
                        color: Colors.blue,
                        child: Text('Anjing'),
                        onPressed: () {
                          Navigator.pushNamed(context, Pilihan.routeName);
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
              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
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