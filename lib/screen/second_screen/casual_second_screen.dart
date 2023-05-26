import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/second_screen/watch_container.dart';

import '../third_screen/casual_third_screen/casual_first_watch.dart';
import '../third_screen/casual_third_screen/casual_second_watch.dart';
import '../third_screen/casual_third_screen/casual_third_watch.dart';

class CasualSecondPage extends StatelessWidget {
  const CasualSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(r'assets/images/casual1.png'),
                titlePadding: EdgeInsets.zero,
                title: Text(
                  "Casual Watches",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: size.height * 0.017,
                      fontWeight: FontWeight.bold),
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
                  firstCasualContainer(size, context),
                  secondCasualContainer(size, context),
                  thirdCasualContainer(size, context),
                  firstCasualContainer(size, context),
                  secondCasualContainer(size, context),
                  thirdCasualContainer(size, context),
                  firstCasualContainer(size, context),
                  secondCasualContainer(size, context),
                  thirdCasualContainer(size, context),
                  secondCasualContainer(size, context),
                ]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  mainAxisExtent: size.height * 0.25,
                ))
          ],
        ),
      ),
    );
  }

  Widget firstCasualContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CasualFirstWatch();
          }));
        },
        price: const Text(
          '\$ 550',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Breiting Watch \nC870',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/luxary8.png',
          height: size.height * 0.16,
        ));
  }

  Widget secondCasualContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CasualSecondWatch();
          }));
        },
        price: const Text(
          '\$ 450',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Classic Watch \nC270',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/luxary3.png',
          height: size.height * 0.16,
        ));
  }

  Widget thirdCasualContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CasualThirdWatch();
          }));
        },
        price: const Text(
          '\$ 700',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Rado Watch \nC670',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/luxary4.png',
          height: size.height * 0.16,
        ));
  }
}
