import 'package:flutter/material.dart';
import 'package:navigation/shades_page.dart';
import 'list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Colors')),
      body: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                navigateToShadePage(context, Colors.accents.elementAt(index));
                // print(Colors.accents.elementAt(index));
              },
              child: ListItem(color: Colors.accents.elementAt(index)),
            );
          }),
    );
  }

  // function that takes two arguments
  void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return ShadesPage(color: color);
      }),
    );
  }
}
