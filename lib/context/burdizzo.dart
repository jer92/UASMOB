import 'package:flutter/material.dart';



class BURDIZZO extends StatelessWidget {

  static const String routeName = '/BURDIZZO';
  final String title = 'BURDIZZO';
  final String location = 'Klinik';

  final String description =
  '''
 jalan permata raya, ruko permata 1 no.11 Perumahan Taman royal 1 kel. Tanah Tinggi , Kec. Tangerang (1.405,74 km) Kota Tangerang 15119  0812-8703-216 Toko Hewan Peliharaan · Dokter Hewan · Kebutuhan Hewan Peliharaan Jam 08.00 - 21.00 Tutup dalam 55 menit

  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Klinik Hewan',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.blueAccent
        ),),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/klinik3.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children:  [
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,                
                children:  [                  
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20.0,
                    ),
                  ),
                  
                ],
              ),
                        
                          
            ],
          ),          
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0, 
              ),
              softWrap: true,
            ),
          ),
         
        ],
      ),
    );
  }
}
