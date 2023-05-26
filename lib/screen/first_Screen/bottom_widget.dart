import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: size.height * 1,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 250, 244, 244),
              offset: Offset(1, 1),
              blurRadius: 2,
              blurStyle: BlurStyle.solid),
          BoxShadow(
              color: Color.fromARGB(255, 250, 244, 244),
              offset: Offset(-1, -1),
              blurRadius: 2,
              blurStyle: BlurStyle.solid)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: const Color.fromARGB(255, 249, 245, 245),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(r'assets/images/luxary2.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Koroen Watchs',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.height * 0.04),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'A quality watch is at least made of Stainless Steel.A titanium or ceramic watch is harder / better,but those watches also have a more expensive price tag.\nWhat Determines A Quality Watch: Characteristics to Look For ; Case Material Proprietary materials and luxury metals can often add to a watch',
                style: TextStyle(fontSize: size.height * 0.016),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
