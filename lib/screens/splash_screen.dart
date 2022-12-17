import 'dart:async';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer ;

  _startDelay()
  {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext ()
  {
    Navigator.pushReplacementNamed(context, 'Home');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff023047),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const
          [
            Image(
              image: AssetImage('assets/images/colors/japan.png'),
              width: 200.0,
              height: 200.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Toku App ',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Application for learning Japanese language',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
