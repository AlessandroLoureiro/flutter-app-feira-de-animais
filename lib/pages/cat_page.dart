import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/list_view_cat.dart';

class CatPage extends StatelessWidget {
  final Cat cat;

  CatPage(this.cat);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.nome),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              cat.foto,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            child: Title(
                color: Colors.black,
                child: Text(
                  cat.especific,
                  style: TextStyle(fontSize: 20),
                )),
          ))
        ],
      ),
    );
  }
}
