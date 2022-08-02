import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;

  // required means you need to parse in the parameter only works
  // this.color point to the specific object it is similar to html's id
  const ListItem({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}
