import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/third_screen/third_page_container.dart';

class SmartSecondWatch extends StatelessWidget {
  const SmartSecondWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ThirdContainer(
      name: Text(
        'Smart Watch',
        style: TextStyle(
            fontSize: size.height * 0.04,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      title: Text(
        'Warranty\n 5 Years',
        style: TextStyle(
            fontSize: size.height * 0.02,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      child: Image.asset(
        r'assets/images/samrt3.png',
        height: size.height * 0.30,
      ),
    );
  }
}
