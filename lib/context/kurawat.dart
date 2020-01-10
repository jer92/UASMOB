import 'package:flutter/material.dart';


class Kurawat extends StatelessWidget {

static const String routeName = '/Kurawat';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/train1.jpg'),
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
          'Jangan pernah jenuh untuk melatih anjing Anda melakukan berbagai macam hal, karena anjing Anda lahir tidak dalam keadaan terlatih. Jika rutin melakukan kegiatan ini anjing akan melihat Anda tidak hanya sebagai pelatih namun juga sahabat terdekatnya. Hal yang bisa Anda latih adalah membuang kotoran di litter box yang isinya pasir khusus menampung kotoran hewan, buang air kecil di luar rumah, dan lain sebagainya.',
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
            'Perawatan 4',
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
