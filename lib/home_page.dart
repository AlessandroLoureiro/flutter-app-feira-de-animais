import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer_list.dart';
import 'package:flutter_application_1/pages/page1.dart';
import 'package:flutter_application_1/pages/page2.dart';
import 'package:flutter_application_1/pages/page3.dart';
import 'package:flutter_application_1/pages/page_viewseparator_dogcat.dart';
import 'package:flutter_application_1/utils/nav.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerList(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text("FEIRAS DE ANIMAIS"),
            expandedHeight: 30,
            collapsedHeight: 60,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        body(context),
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () => onClickNavigator(context, Page1()),
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.brown,
              ),
              label: Text(
                "Page 1",
                style: TextStyle(color: Colors.brown),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(255, 103, 102, 205),
                elevation: 5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                    side: BorderSide(color: Colors.brown)),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => onClickNavigator(context, Page2()),
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.brown,
              ),
              label: Text(
                "Page 2",
                style: TextStyle(color: Colors.brown),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(255, 103, 102, 205),
                elevation: 5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                    side: BorderSide(color: Colors.brown)),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => onClickNavigator(context, Page3()),
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.brown,
              ),
              label: Text(
                "Page 3",
                style: TextStyle(color: Colors.brown),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(255, 103, 102, 205),
                elevation: 5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                    side: BorderSide(color: Colors.brown)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  body(context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.deepOrange[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SeparatorBox("Adote um Cachorrinho!"),
            PageViewDog(),
            SeparatorBox("Adote um gatinho!"),
            PageViewCat(),
          ],
        ),
      ),
    );
  }
}
