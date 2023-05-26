import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/second_screen/watch_container.dart';

import '../third_screen/luxary_third_screen/luxary_eight_watch.dart';
import '../third_screen/luxary_third_screen/luxary_first_watch.dart';
import '../third_screen/luxary_third_screen/luxary_five_watch.dart';
import '../third_screen/luxary_third_screen/luxary_four_watch.dart';
import '../third_screen/luxary_third_screen/luxary_nine_watch.dart';
import '../third_screen/luxary_third_screen/luxary_second_watch.dart';
import '../third_screen/luxary_third_screen/luxary_seven_watch.dart';
import '../third_screen/luxary_third_screen/luxary_six_watch.dart';
import '../third_screen/luxary_third_screen/luxary_tan_watch.dart';
import '../third_screen/luxary_third_screen/luxary_third_watch.dart';

class LuxarySecondPage extends StatelessWidget {
  const LuxarySecondPage({Key? key}) : super(key: key);

  static const LuxarySecond = '/luxary';

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
              shadowColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    r'assets/images/luxary2.png',
                  ),
                ),
                titlePadding: EdgeInsets.zero,
                title: Padding(
                  padding: const EdgeInsets.only(left: 4.0, bottom: 2.0),
                  child: Text(
                    'Luxary Watch',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 21, 20, 20),
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.017,
                    ),
                  ),
                ),
              ),
              stretch: true,
              backgroundColor: const Color.fromARGB(255, 240, 239, 239),
              expandedHeight: 200,
              pinned: true,
              forceElevated: true,
            ),
            SliverGrid(
                delegate: SliverChildListDelegate([
                  firstLuxaryContainer(size, context),
                  secondLuxaryContainer(size, context),
                  thirdLuxaryContainer(size, context),
                  fourLuxaryContainer(size, context),
                  fiveLuxaryContainer(size, context),
                  sixLuxaryContainer(size, context),
                  sevenLuxaryContainer(size, context),
                  eightLuxaryContainer(size, context),
                  nineLuxaryContainer(size, context),
                  tanLuxaryContainer(size, context),
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

  Widget firstLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxaryFirstWatch();
          }));
        },
        price: const Text(
          '\$ 450',
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
          r'assets/images/luxary1.png',
          height: size.height * 0.16,
        ));
  }

  Widget secondLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxarySecondWatch();
          }));
        },
        price: const Text(
          '\$ 409',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nC350',
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

  Widget thirdLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxaryThirdWatch();
          }));
        },
        price: const Text(
          '\$ 640',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Rado Watch \nRC320',
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

  Widget fourLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxaryFourWatch();
          }));
        },
        price: const Text(
          '\$ 520',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Rols Watch \nE360',
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

  Widget fiveLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LuxaryFiveWatch();
              },
            ),
          );
        },
        price: const Text(
          '\$ 300',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nGC390',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/luxary5.png',
          height: size.height * 0.16,
        ));
  }

  Widget sixLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxarySixWatch();
          }));
        },
        price: const Text(
          '\$ 780',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nC590',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/luxary6.png',
          height: size.height * 0.16,
        ));
  }

  Widget sevenLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxarySevenWatch();
          }));
        },
        price: const Text(
          '\$ 590',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nHT209',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(
          r'assets/images/luxary0.jpg',
          height: size.height * 0.16,
        ));
  }

  Widget eightLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxaryEightWatch();
          }));
        },
        price: const Text(
          '\$ 400',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nFU264',
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

  Widget nineLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxaryNineWatch();
          }));
        },
        price: const Text(
          '\$ 750',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nBR502',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color.fromARGB(255, 72, 72, 71)),
        ),
        child: Image.asset(r'assets/images/luxary3.png',
            height: size.height * 0.16));
  }

  Widget tanLuxaryContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LuxaryTanWatch();
          }));
        },
        price: const Text(
          '\$ 350',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Baume Watch \nBR002',
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
