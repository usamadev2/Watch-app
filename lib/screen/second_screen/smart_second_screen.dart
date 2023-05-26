import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/second_screen/watch_container.dart';

import '../third_screen/smart_third_screen/smart_first_watch.dart';
import '../third_screen/smart_third_screen/smart_second_watch.dart';
import '../third_screen/smart_third_screen/smart_third_watch.dart';

class SmartSecondScreen extends StatelessWidget {
  const SmartSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                r'assets/images/smart4.png',
                fit: BoxFit.cover,
              ),
              titlePadding: EdgeInsets.zero,
              title: Text(
                'Smart Watch',
                style: TextStyle(
                    fontSize: size.height * 0.017,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            // title: const Text('Casual Watchs'),
            stretch: true,
            backgroundColor: const Color.fromARGB(255, 240, 239, 239),
            expandedHeight: 200,
            pinned: true,
          ),
          SliverGrid(
              delegate: SliverChildListDelegate([
                firstSmartContainer(size, context),
                secondSmartContainer(size, context),
                thirdSmartContainer(size, context),
                firstSmartContainer(size, context),
                secondSmartContainer(size, context),
                thirdSmartContainer(size, context),
                firstSmartContainer(size, context),
                secondSmartContainer(size, context),
                thirdSmartContainer(size, context),
                firstSmartContainer(size, context),
              ]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: size.height * 0.25,
              )),
        ],
      ),
    );
  }

  Widget firstSmartContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SmartFirstWatch();
          }));
        },
        price: const Text(
          '\$1000',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Apple Watch \ni6',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/smart6.png',
          height: size.height * 0.16,
        ));
  }

  Widget secondSmartContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SmartSecondWatch();
          }));
        },
        price: const Text(
          '\$1000',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Apple Watch \ni6',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/samrt3.png',
          height: size.height * 0.16,
        ));
  }

  Widget thirdSmartContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SmartThirdWatch();
          }));
        },
        price: const Text(
          '\$800',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Apple Watch \ni5',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/digital2.jpg',
          height: size.height * 0.16,
        ));
  }
}
