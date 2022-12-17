import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Model> phrases = const [
    Model(
      jpName: 'Kimasu ka',
      enName: 'are you coming',
      sound: 'are_you_coming.wav',
    ),
    Model(
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Don\'t forget to subscribe',
      sound: 'dont_forget_to_subscribe.wav',
    ),
    Model(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
      sound: 'how_are_you_feeling.wav',
    ),
    Model(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: ''
          'I love anime',
      sound: 'i_love_anime.wav',
    ),
    Model(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
      sound: 'i_love_programming.wav',
    ),
    Model(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
      sound: 'programming_is_easy.wav',
    ),
    Model(
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name',
      sound: 'what_is_your_name.wav',
    ),
    Model(
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
      sound: 'where_are_you_going.wav',
    ),
    Model(
      jpName: 'Hai, ikimasu',
      enName: 'yes, I\'m coming',
      sound: 'yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff023047),
        title: const Text(
          'Phrases',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PhrasesItem(
            itemType: 'phrases',
            number: phrases[index],
            color: const Color(0xff186b96),);
        },
        separatorBuilder: (context, index) {
          return myDivider();
        },
        itemCount: phrases.length,
      ),
    );
  }
}
