import 'package:flutter/material.dart';


class Sallo extends StatelessWidget {

static const String routeName = '/Sallo';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/sallo.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Klinik',
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
          'Sallo pet shop Sallo Pet Shop merupakan toko yang menjual berbagai kebutuhan hewan peliharaan, mulai dari makanan, kandang, dan aksesoris. Selain itu, Sallo Pet Shop juga menerima jasa penitipan hewan, go pet wet (grooming) dan klinik untuk hewan peliharaan kamu. Segala kebutuhan hewan peliharaan tersedia di Sallo Pet Shop. Toko ini berada di Ruko Crystal Lane No 47, Alam Sutera, Tangerang, Buka setiap Senin - Minggu (08:00 - 22:00 WIB).',
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
            'Sallo Pet Shop',
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
