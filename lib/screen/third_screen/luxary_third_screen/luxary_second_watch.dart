import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/third_screen/third_page_container.dart';

class LuxarySecondWatch extends StatelessWidget {
  const LuxarySecondWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ThirdContainer(
      name: Text(
        'Baume Watch',
        style: TextStyle(
            fontSize: size.height * 0.04,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      title: Text(
        'Warranty\n 3 Years',
        style: TextStyle(
            fontSize: size.height * 0.02,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      child: Image.asset(
        r'assets/images/luxary8.png',
        height: size.height * 0.35,
      ),
    );
  }
}
