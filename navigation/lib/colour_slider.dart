import 'package:flutter/material.dart';

class RGBSliderPage extends StatelessWidget {
  const RGBSliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, //
          title: Text('Pick your Colour')),
      body: const ColourSlider(),
    );
  }
}

class ColourSlider extends StatefulWidget {
  const ColourSlider({Key? key}) : super(key: key);

  @override
  State<ColourSlider> createState() => _ColourSliderState();
}

class _ColourSliderState extends State<ColourSlider> {
  int redVal = 0;
  int greenVal = 0;
  int blueVal = 0;

  late Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Slider(
            min: 0,
            max: 255,
            value: redVal.toDouble(),
            onChanged: (value) {
              redVal = value.toInt();

              setState(() {});
            }),
        Slider(
            min: 0,
            max: 255,
            value: greenVal.toDouble(),
            onChanged: (value) {
              greenVal = value.toInt();

              setState(() {});
            }),
        Slider(
            min: 0,
            max: 255,
            value: blueVal.toDouble(),
            onChanged: (value) {
              blueVal = value.toInt();

              setState(() {});
            }),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Text(
            'The colour you have pick is $redVal, $greenVal, $blueVal',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                fontSize: 16),
          ),
        ),
        Container(
          margin: EdgeInsets.all(40),
          width: 180,
          height: 180,
          decoration: BoxDecoration(
              color: Color.fromRGBO(redVal, greenVal, blueVal, 1.0),
              shape: BoxShape.circle),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(bgColor);
          },
          child: Text('Add This To My Palette!'),
        ),
        Container(
          height: 140,
          width: 140,
        )
      ]),
    );
  }
}
