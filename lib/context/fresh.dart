import 'package:flutter/material.dart';


class Fresh extends StatelessWidget {

static const String routeName = '/Fresh';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('images/perawat3.jpg'),
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
          'Rajin-rajinlah membersihkan gigi, telinga, dan kuku kucing. Tempat-tempat inilah yang biasanya sangat rentan terhadap kuman dan bakteri. Selain itu, jika dibiarkan kotor, hal ini bisa menyebabkan infeksi dan penyakit pada kucing! Selain membersihkan tubuhnya dari luar, sesekali berilah si kucing obat cacing secara rutin dalam 3 bulan sekali. Jangan lupa juga, berikan vaksin rabies setahun sekali. Merawat kucing membutuhkan tanggung jawab yang besar dan nggak main-main. Selain dituntut untuk bisa memahami kebutuhannya, kamu juga harus siap untuk direpotkan kapan saja.',
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
            'Perawatan 3',
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
