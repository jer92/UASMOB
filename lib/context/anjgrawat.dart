import 'package:flutter/material.dart';


class Anjgrawat extends StatelessWidget {

static const String routeName = '/Anjgrawat';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/wash1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Perawatan',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ); 
    
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
          'Mandikan Sebulan Minimal Dua Kali Perawatan yang bisa Anda lakukan selanjutnya adalah mandikan sebulan minimal dua kali. Untuk memandikannya Anda bisa menggunakan shampoo anjing yang banyak dijual di supermarket atau di pet shop. Jangan menggunakan sembarang shampoo karena hasilnya tidak akan bagus. Untuk airnya akan lebih bagus lagi jika menggunakan air hangat. Setelah dimandikan, Anda bisa mengeringkannya dengan menggunakan hairdryer.',
          textAlign: TextAlign.justify,
        )
    );

  

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Perawatan 2',
            style: TextStyle(color: Colors.black),
          ),

        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
            ),
            
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text, 
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}
