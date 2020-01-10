import 'package:flutter/material.dart';

import 'package:perawatankkj/context/jenisPerawatan.dart';

import 'package:perawatankkj/context/Klinik.dart';
import 'package:perawatankkj/context/makanananjing.dart';
import 'package:perawatankkj/context/perawatananjing.dart';

    class Pilihan extends StatelessWidget {
      static const String routeName = '/Pilihan';
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Kategori',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            ),),
         ),
            body: BodyLayout(),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

 Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('images/dokteranjing.jpg'),
          ),
            title: Text('Perawatan Anjing'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, Perawatananjg.routeName);
             },
          ),
          ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('images/propac2.jpg'),),
            title: Text('Makanan Anjing'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, Makanananjing.routeName);
             },
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('images/clinic1.jpg'),
            ),
            title: Text('Klinik '),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, Klinik.routeName);
             },
          ),
        ],
      );
    }



