import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/list_view_dog.dart';

class DogPage extends StatelessWidget {
  final Dog dog;

  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.nome),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              dog.foto,
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
                  dog.especific,
                  style: TextStyle(fontSize: 20),
                )),
          ))
        ],
      ),
    );
  }
}
