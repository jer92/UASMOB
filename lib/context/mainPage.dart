import 'package:flutter/material.dart';
import 'package:perawatankkj/context/HomePage.dart';
import 'package:perawatankkj/context/kategoriku.dart';
import 'package:perawatankkj/context/about.dart';

import 'package:perawatankkj/context/categories.dart';
import 'package:perawatankkj/context/jenisPerawatan.dart';
import 'package:perawatankkj/context/Klinik.dart';



class MainPage extends StatefulWidget {

  static const routeName = '/MainPage';

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> _layoutPage = [
    HomePage(),
    
    
    Kategoriku(),
    Klinik(),
    About(),
    
    
  ];

  void _onItemTapped(int index) {
    setState(() {
     selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _layoutPage.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.black,
          ),
          
          
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Kategori'),
            backgroundColor: Colors.black,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text('Klinik Hewan'),
            backgroundColor: Colors.black,
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('About us'),
            backgroundColor: Colors.black,
          ),

        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}