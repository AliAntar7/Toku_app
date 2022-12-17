import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Model> numbers = const [
    Model(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'number_one_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
      sound: 'number_two_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
      sound: 'number_three_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
      sound: 'number_four_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
      sound: 'number_five_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
      sound: 'number_six_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'number_seven_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'number_eight_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      enName: 'nine',
      sound: 'number_nine_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'ten',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff023047),
        title: const Text(
          'Numbers'
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Item(
              itemType: 'numbers',
              number: numbers[index],
              color: const Color(0xff186b96),);
          },
          separatorBuilder: (context, index) {
            return myDivider();
          },
          itemCount: numbers.length,
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [] ;
  //   for (int i = 0; i < numbers.length; i++)
  //   {
  //     itemList.add(Item(number: numbers[i]));
  //   }
  //   return itemList;
  // }
}

