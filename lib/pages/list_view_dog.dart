import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dog_page.dart';
import 'package:flutter_application_1/utils/nav.dart';

class Dog {
  final String nome;
  final String foto;
  final String especific;

  Dog(this.nome, this.foto, this.especific);
}

class ListViewDog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 2,
        backgroundColor: Colors.deepOrange[50],
      ),
      body: _body(),
    );
  }

  _body() {
    List<Dog> dogs = [
      Dog("JackRossel", "assets/images/dog1.png",
          "JACK ROSSEL -Terrier cheio de vida, alerta e ativo, com uma expressão aguçada e inteligente. Corajoso e destemido, amigável, mas de uma tranquila confiança."),
      Dog("Labrador", "assets/images/dog2.png",
          "LABRADOR - Os cães dessa raça são descontraídos e brincalhões. Como são enérgicos, gostam muito de passear, correr e até mesmo jogar bola ou discos com o tutor."),
      Dog("Pug", "assets/images/dog3.png",
          "PUG - Muito carinhoso e amável. Para quem deseja um companheiro para todas as horas, esta é a raça ideal. Os cães costumam ser fiéis e demonstrar amor por seus tutores a todo tempo."),
      Dog("Rottweiler", "assets/images/dog4.png",
          "ROTTWEILER - Firme; Boa natureza; Destemido; Dedicado; Alerta; Obediente; Confiante; Seguro de si mesmo; Calmo; Corajoso; Protetor; Territorialista... E muito Carinhoso"),
      Dog("Pastor Autraliano", "assets/images/dog5.png",
          "PASTOR AUSTRALIANO -  Afetuoso · Inteligente · Ativo · Protetor · Gosta de trabalhar · Companheiro · Entusiasmado."),
      Dog("PitBull", "assets/images/dog6.png",
          "PITBULL - Muito inteligentes e leais aos seus tutores, são essas as características da personalidade do Pitbull. Esses cães querem sempre proteger e agradar a seus tutores, por isso, são muito obedientes."),
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: 380,
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];

        return GestureDetector(
          onTap: () {
            push(context, DogPage(dog));
          },
          child: Stack(fit: StackFit.expand, children: <Widget>[
            img(dog.foto),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  dog.nome,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ]),
        );
      },
    );
  }

  img(String img) {
    return Container(
      color: Colors.deepOrange[50],
      margin: EdgeInsetsDirectional.only(
        start: 2,
        end: 2,
      ),
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
