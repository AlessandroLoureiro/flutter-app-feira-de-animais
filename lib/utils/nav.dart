import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) {
  return Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

void onClickPage(BuildContext context, Widget page) async {
  await Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

void onClickNavigator(BuildContext context, Widget page) async {
  String? s = await push(context, page);
}
