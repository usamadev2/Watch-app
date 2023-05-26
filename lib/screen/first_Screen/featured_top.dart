import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/first_Screen/custom_button.dart';
import 'package:flutter_watch_app/screen/second_screen/classic_second_screen.dart';
import 'package:flutter_watch_app/screen/second_screen/smart_second_screen.dart';

import '../second_screen/casual_second_screen.dart';
import '../second_screen/luxary_second_screen.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 50,
          child: _buildTextWidget(),
        ),
        Expanded(
          flex: 40,
          child: _buildFourIcons(context, size),
        ),
      ],
    );
  }

  Widget _buildTextWidget() {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(alignment: Alignment.centerLeft),
          Text(
            'Watchs',
            style: TextStyle(
                fontSize: constraints.maxHeight * 0.40,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Collection',
            style: TextStyle(
                fontSize: constraints.maxHeight * 0.25,
                fontWeight: FontWeight.bold),
          ),
        ],
      );
    });
  }

  Widget _buildFourIcons(BuildContext context, Size size) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
            child: Text(
              'Luxary',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const LuxarySecondPage();
                },
              ));
            }),

        //Classic Button

        CustomButton(
          child: Text(
            'Classic',
            style: TextStyle(
                color: Colors.black,
                fontSize: size.height * 0.02,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ClassicSecondPage();
              },
            ));
          },
        ),

        /// Casual Button

        CustomButton(
          child: Text(
            'Casual',
            style: TextStyle(
                color: Colors.black,
                fontSize: size.height * 0.02,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const CasualSecondPage();
              },
            ));
          },
        ),

        /// Smart Button

        CustomButton(
          child: Text(
            'Smart',
            style: TextStyle(
                color: Colors.black,
                fontSize: size.height * 0.02,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const SmartSecondScreen();
              },
            ));
          },
        ),
      ],
    );
  }
}
