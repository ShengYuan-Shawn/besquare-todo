import 'package:flutter/material.dart';
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
      appBar: AppBar(centerTitle: true, title: Text('Colors')),
      body: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                navigateToShadePageStatic(
                    context, Colors.accents.elementAt(index));
                // print(Colors.accents.elementAt(index));
              },
              child: ListItem(color: Colors.accents.elementAt(index)),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToSliderPageStatic(context);
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.brush),
        tooltip: 'Colour Slider',
      ),
    );
  }

  void navigateToShadePageStatic(
      BuildContext context, MaterialAccentColor color) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  }

  void navigateToSliderPageStatic(
      BuildContext context) {
    Navigator.pushNamed(
      context,
      '/slider',
    );
  }

  // function that takes two arguments
  // void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (BuildContext context) {
  //       return ShadesPage(color: color);
  //     }),
  //   );
  // }
}
