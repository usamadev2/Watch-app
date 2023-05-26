import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/first_Screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const sRout = '/ ';

  @override
  State<SplashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    setState(() {
      Timer(
        const Duration(seconds: 5),
        () {
          Navigator.popAndPushNamed(context, HomeScreen.hRout);
        },
      );
    });
  }

  var end = 300.0;
  var endAngle = 2 * pi;

  @override
  Widget build(BuildContext context) {
    var tween = Tween<double>(begin: 100, end: end);
    var tweenRotation = Tween<double>(begin: 0, end: endAngle);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFf7f7f7),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Watch Plus',
                style: TextStyle(
                    fontSize: size.height * 0.08,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TweenAnimationBuilder<double>(
                tween: tweenRotation,
                duration: const Duration(seconds: 4),
                builder: (context, value, child) => Transform.rotate(
                  angle: value,
                  child: child,
                ),
                child: SizedBox(
                  height: size.height * 0.2,
                  width: size.width * 0.4,
                  child: Image.asset(r'assets/images/splash_image1.png'),
                ),
              ),
              TweenAnimationBuilder<double>(
                  tween: tween,
                  duration: const Duration(seconds: 4),
                  builder: (context, value, child) => SizedBox(
                        width: value,
                        height: value,
                        child: Image.asset(r'assets/images/splash_image.png'),
                      )),
            ]),
      ),
    );
  }
}
