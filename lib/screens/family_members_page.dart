import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Model> familyMembers = const [
    Model(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Otōsan',
      enName: 'father',
      sound: 'father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
      sound: 'mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
      sound: 'son.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
      sound: 'daughter.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'grand father',
      sound: 'grand father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
      sound: 'grand mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'older brother',
      sound: 'older bother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Onēsan',
      enName: 'older sister',
      sound: 'older sister.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'younger brother',
      sound: 'younger brohter.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
      sound: 'younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff023047),
        title: const Text(
          'Family Members',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Item(
            itemType: 'family_members',
            number: familyMembers[index],
            color: const Color(0xff186b96),);
        },
        separatorBuilder: (context, index) {
          return myDivider();
        },
        itemCount: familyMembers.length,
      ),
    );
  }
}
