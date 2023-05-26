import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/third_screen/third_page_container.dart';

class CasualThirdWatch extends StatelessWidget {
  const CasualThirdWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ThirdContainer(
      name: Text(
        'Man Watch',
        style: TextStyle(
            fontSize: size.height * 0.04,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      title: Text(
        'Warranty\n 2 Years',
        style: TextStyle(
            fontSize: size.height * 0.02,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      child: Image.asset(
        r'assets/images/luxary4.png',
      ),
    );
  }
}
