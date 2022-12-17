import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Model> colors = const [
    Model(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'black',
      sound: 'black.wav',
    ),
    Model(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
      sound: 'brown.wav',
    ),
    Model(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      sound: 'dusty yellow.wav',
    ),
    Model(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
      sound: 'gray.wav',
    ),
    Model(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
      sound: 'green.wav',
    ),
    Model(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
      sound: 'red.wav',
    ),
    Model(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'white',
      sound: 'white.wav',
    ),
    Model(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
      sound: 'yellow',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff023047),
        title: const Text(
          'Colors',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Item(
            itemType: 'colors',
            number: colors[index],
            color: const Color(0xff186b96),);
        },
        separatorBuilder: (context, index) {
          return myDivider();
        },
        itemCount: colors.length,
      ),
    );
  }
}
