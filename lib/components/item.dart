import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/model.dart';

class Item extends StatelessWidget
{
  const Item({Key? key, required this.number, required this.color, required this.itemType}) : super(key: key);
  final Model number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.white70,
            child: Image.asset(number.image!,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: ()
                {
                  try
                  {
                    AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(number.sound);
                  }catch(error)
                  {
                    print(error);
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 28,
                ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget
{
  const PhrasesItem({Key? key, required this.number, required this.color, required this.itemType}) : super(key: key);
  final Model number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(
                  width: 300,
                  child: Text(
                    number.jpName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: ()
              {
                try
                {
                  AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(number.sound);
                }catch(error)
                {
                  print(error);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget myDivider() => Padding(
  padding: const EdgeInsets.all(0.5),
  child: Container(
    color: Colors.grey[500],
  ),
);

