import 'package:flutter/material.dart';


class Mainadd extends StatelessWidget {

static const String routeName = '/Mainadd';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/makanank1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Perawatan Kucing',
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
          'Royal Canin Recovery adalah makanan anjing dan makanan kucing yang diformulasikan untuk membantu hewan pada saat sakit dan proses pemulihan.Makanan ini mempunyai densitas energi tinggi dan konsentarasi nutrisi esensial tinggi yang sangat mudah dicerna.Fungsi:Energi yang Disesuaikan Kandungan energi yang disesuaikan untuk memudahkan manajemen nutrisi anjing atau kucing selama periode kritis.Memudahkan Tube Feeding Tekstur khusus Royal Canin Recovery memudahkan pemberian makanan dengan menggunakan jarum suntik atau feeding tube ',
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
            'Royal Canin Recovery',
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
