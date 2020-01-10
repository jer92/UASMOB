import 'package:flutter/material.dart';


class Equilibrio extends StatelessWidget {

static const String routeName = '/Equilibrio';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/equilibrio.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Makanan Khusus',
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
          'Equilibrio Makanan anjing Equilibrio membantu anjing peliharaanmu dalam proses membakar lemak dan mendukung agar anjing peliharaanmu memiliki hidup yang lebih panjang dan lebih sehat. Hal ini dimungkinkan berkat dukungan dari antioksidan alami yang terkandung di dalam makanan ini. Selain itu, makanan anjing Equilibrio juga berkontribusi dalam kesehatan sendi peliharaanmu dengan chondroitin sulphate dan glucosamine sulphate yang tersimpan di dalamnya.',
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
            'Equilibrio',
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
