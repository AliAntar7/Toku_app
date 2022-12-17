import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/colors.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff023047),
        title: const Text(
          'Toku',
        ),
      ),
      body: Column(
        children:
        [
          const Image(
            image: AssetImage('assets/images/colors/jpn.jpg'),
            width: 360.0,
            height: 300.0,
          ),
          Category(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {return const NumbersPage();},));
            },
            text: 'Numbers',
            icon: 'numbers',
            color: const Color(0xff2D728C),
          ),
          Category(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {return const FamilyMembersPage();},));
            },
            icon: 'family_members',
            text: 'Family Members',
            color: const Color(0xff2D728C),//Color(0xff817425),
          ),
          Category(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {return const ColorsPage();},));
            },
            text: 'Colors',
            icon: 'colors',
            color: const Color(0xff2D728C),//Color(0xffFB8500),
          ),
          Category(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {return const PhrasesPage();},));
            },
            text: 'Phrases',
            icon: 'phrases',
            color: const Color(0xff2D728C),//Color(0xffFFB703),
          ),
        ],
      ),
    );
  }
}


