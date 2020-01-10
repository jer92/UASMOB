import 'package:flutter/material.dart';

import 'package:perawatankkj/context/detail.dart';
import 'package:perawatankkj/context/Klinik.dart';
import 'package:perawatankkj/context/kategoriku.dart';
import 'package:perawatankkj/context/jenisPerawatan.dart';
import 'package:perawatankkj/context/bingo.dart';
import 'package:perawatankkj/context/sallo.dart';
import 'package:perawatankkj/context/happy.dart';
import 'package:perawatankkj/context/kakucing.dart';
import 'package:perawatankkj/context/kurawat.dart';
import 'package:perawatankkj/context/rawat.dart';
import 'package:perawatankkj/context/anjg.dart';
import 'package:perawatankkj/context/anjgrawat.dart';
import 'package:perawatankkj/context/rcrecovery.dart';
import 'package:perawatankkj/context/equilibrio.dart';
import 'package:perawatankkj/context/about.dart';


import 'package:splashscreen/splashscreen.dart';
import 'package:perawatankkj/context/royal.dart';
import './context/HomePage.dart';
import 'package:perawatankkj/context/mainPage.dart';
import 'package:perawatankkj/context/makanan.dart';

import 'package:perawatankkj/context/burdizzo.dart';

import 'package:perawatankkj/context/sembuh.dart';
import 'package:perawatankkj/context/healing.dart';
import 'package:perawatankkj/context/fresh.dart';
import 'package:perawatankkj/context/cheers.dart';
import 'package:perawatankkj/context/mainadd.dart';
import 'package:perawatankkj/context/categories.dart';
import 'package:perawatankkj/context/kategori.dart';
import 'package:perawatankkj/context/kaanjing.dart';
import 'package:perawatankkj/context/makanankucing.dart';
import 'package:perawatankkj/context/perawatananjing.dart';
import 'package:perawatankkj/context/makanananjing.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pet Day Care',
    theme: ThemeData(
      primaryColor: Colors.white,
      
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => MyApp(),
      MainPage.routeName : (context) => MainPage(),
      HomePage.routeName : (context) => HomePage(),
      Detail.routeName : (context) => Detail(),
      Royal.routeName : (context) => Royal(),
     JenisPerawatan.routeName : (context) => JenisPerawatan(),
         Klinik.routeName : (context) => Klinik(),
      
          Makanan.routeName : (context) => Makanan(),
           Equilibrio.routeName : (context) =>Equilibrio (),
           BURDIZZO.routeName : (context) => BURDIZZO(),
           About.routeName : (context) => About(),
           
           Sembuh.routeName : (context) => Sembuh(),
           Healing.routeName : (context) => Healing(),
          Fresh.routeName : (context) => Fresh(),
           Cheers.routeName : (context) => Cheers(),
           Mainadd.routeName : (context) => Mainadd(),
            Categories.routeName : (context) => Categories(),
            Bingo.routeName : (context) => Bingo(),
            Sallo.routeName : (context) => Sallo(),
            Happy.routeName : (context) => Happy(),
            Pilihan.routeName : (context) => Pilihan(),
            Kakucing.routeName : (context) => Kakucing(),
            Kaanjing.routeName : (context) => Kaanjing(),
             MakananKucing.routeName : (context) => MakananKucing(),
             Kategoriku.routeName : (context) => Kategoriku(),
             Rawat.routeName : (context) => Rawat(),
             Anjg.routeName : (context) => Anjg(),
             Anjgrawat.routeName : (context) => Anjgrawat(),
             Kurawat.routeName : (context) => Kurawat(),
             Perawatananjg.routeName : (context) => Perawatananjg(),
              Rcrecovery.routeName : (context) => Rcrecovery(),
               Rcrecovery.routeName : (context) => Rcrecovery(),
                Rcrecovery.routeName : (context) => Rcrecovery(),
                 Makanananjing.routeName : (context) => Makanananjing(),
           
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String title = 'PET DAY CARE';
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MainPage(),
      title: new Text(this.title,    
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 45,
        color: Colors.black,
        ),
      ),
      backgroundColor: Colors.blue,
      
    );
  }
}
