import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/list_view_cat.dart';
import 'package:flutter_application_1/pages/list_view_dog.dart';

class SeparatorBox extends StatelessWidget {
  final String text;

  SeparatorBox(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[50],
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(8),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageViewDog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          top: 8,
          bottom: 8,
        ),
        height: 380,
        child: PageView(
          children: <Widget>[
            ListViewDog(),
          ],
        ),
      ),
    );
  }
}

class PageViewCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          top: 8,
          bottom: 8,
        ),
        height: 380,
        child: PageView(
          children: <Widget>[
            ListViewCat(),
          ],
        ),
      ),
    );
  }
}
