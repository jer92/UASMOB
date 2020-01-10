import 'package:flutter/material.dart';


class Sembuh extends StatelessWidget {

static const String routeName = '/Sembuh';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/kucingsakit.jpg'),
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
          'Tahu nggak, kalau anak kucing membutuhkan jumlah gizi dua kali lebih besar dibandingkan kucing dewasa? Namun bukan artinya harus diberi makan terus ya! Biasanya anak kucing akan mulai belajar makan setelah umur 5-6 minggu meski masih menyusu pada induknya. Kamu bisa memberikan makanan secara rutin 4 kali setiap hari. Pastikan juga kamu memilih makanan kucing yang mengandung banyak vitamin dan nutrisi untuk kesehatan si kucing.',
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
            'Perawatan 1',
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
