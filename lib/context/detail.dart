import 'package:flutter/material.dart';



class Detail extends StatelessWidget {

  static const String routeName = '/Detail';
  final String title = 'Gejala';
  final String location = 'penyakit pada umumnya';

  final String description =
  '''
 Kucing yang mengalami masalah demam atau tidak ada nafsu makan disebabkan karena salah makan, virus, atau cuaca dan penyakit musiman kucing.
 
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
        title: Text('Kitty Day Care',
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
            'images/kucingsakit.jpg',
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
