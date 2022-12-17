import 'package:flutter/material.dart';

class Category extends StatelessWidget
{
  Category({super.key, this.text,this.color,this.onTap,this.icon});
  String? text;
  String? icon;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: MaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        color: color,
        height: 65,
        minWidth: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image(
              image: AssetImage('assets/icons/$icon.png'),
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}

Widget lol() => Padding(
  padding: const EdgeInsets.all(20.0),
  child: MaterialButton(
    onPressed: (){},
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17)
    ),
    color: Colors.indigo[400],
    height: 55,
    minWidth: double.infinity,
    child: const Text(
      'Create Task',
      style: TextStyle(
          color: Colors.white,
          fontSize: 20
      ),
    ),
  ),
);
Widget lol1() => GestureDetector(
  onTap: (){},
  child: Container(
    height: 65,
    width: double.infinity,
    color: Colors.redAccent,
    padding: const EdgeInsets.only(left: 24),
    alignment: Alignment.centerLeft,
    child: const Text(
      'text!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  ),
);