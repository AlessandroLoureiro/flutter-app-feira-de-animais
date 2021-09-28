import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cat_page.dart';
import 'package:flutter_application_1/utils/nav.dart';

class Cat {
  final String nome;
  final String foto;
  final String especific;

  Cat(this.nome, this.foto, this.especific);
}

class ListViewCat extends StatelessWidget {
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
    List<Cat> cats = [
      Cat("Siames", "assets/images/cat1.png",
          "SIAMÊS - O gato Siamês além de ser lindo é extremamente inteligente. Ele tem seus desejos próprios. ... O Siamês é um gato bastante carinhoso e requer que seu dono seja tão dedicado a ele, quanto ele é ao seu dono."),
      Cat("Persa", "assets/images/cat2.png",
          "PERSA - Muito fofo e charmoso, o gato Persa encanta os tutores com sua personalidade doce e gentil. Além do jeito calmo, seu corpo firme, olhos grandes e orelhas pequenas ajudam a diferenciá-lo de outras raças."),
      Cat("Bengal", "assets/images/cat3.png",
          "BENGAL - Este felino é uma ótima opção para gato de companhia. Também é perfeito para pessoas que gostam de ter um animal que não precise de tantos cuidados específicos."),
      Cat("Preto", "assets/images/cat4.png",
          "PRETO - Os tutores concordaram que gatos pretos têm maior tendência a ter um comportamento manso e tranquilo, além de serem amáveis, confiáveis e tranquilos."),
      Cat("Inglês", "assets/images/cat5.png",
          "INGLÊS _  O Inglês de Pelo Curto é um gato bastante prazeroso de se ter como companhia. Ele é calmo e pacato. O Inglês é um gato amável, fervorosamente fiel."),
      Cat("Angorá", "assets/images/cat6.png",
          "ANGORÁ - Essa raça é uma das mais antigas do mundo, por isso é considerada um verdadeiro tesouro. O Angorá, apesar de ser dócil, tem a personalidade forte."),
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: 380,
      itemCount: cats.length,
      itemBuilder: (context, index) {
        Cat cat = cats[index];

        return GestureDetector(
          onTap: () {
            push(context, CatPage(cat));
          },
          child: Stack(fit: StackFit.expand, children: <Widget>[
            img(cat.foto),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  cat.nome,
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
