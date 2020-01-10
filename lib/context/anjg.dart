import 'package:flutter/material.dart';


class Anjg extends StatelessWidget {

static const String routeName = '/Anjg';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/nutri1.jpg'),
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
          'Makan Bernutrisi Tinggi Perawatan hewan anjing yang bisa Anda lakukan selanjutnya adalah berikanlah makanan yang mengandung nutrisi tinggi.  Tumbuh kembang anjing tidak akan maksimal jika Anda tidak memberikannya nutrisi yang lengkap. Nutrisi yang diperlukan oleh anjing adalah protein, lemak, vitamin, dan juga mineral di dalam jumlah yang tepat.  Khusus untuk anakan anjing Anda wajib memberikannya konsentrat agar dia bisa menerima semua gizi tanpa harus memberatkan sistem pencernaannya. Jika Anda tidak memiliki waktu untuk melakukan combining, Anda tidak perlu bingung karena sudah banyak makanan kemasan atau instan dengan nutrisi yang lengkap.',
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
