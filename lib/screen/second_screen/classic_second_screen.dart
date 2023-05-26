import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/second_screen/watch_container.dart';

import '../third_screen/classic_third_screen/classic_first_watch.dart';
import '../third_screen/classic_third_screen/classic_second_watch.dart';
import '../third_screen/classic_third_screen/classic_third_watch.dart';

class ClassicSecondPage extends StatelessWidget {
  const ClassicSecondPage({Key? key}) : super(key: key);

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
                r'assets/images/classic.png',
                fit: BoxFit.fitWidth,
              ),
              titlePadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'Classic Watch',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.017,
                  ),
                ),
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
                firstClassicContainer(size, context),
                secondClassicContainer(size, context),
                thirdClassicContainer(size, context),
                firstClassicContainer(size, context),
                secondClassicContainer(size, context),
                thirdClassicContainer(size, context),
                firstClassicContainer(size, context),
                secondClassicContainer(size, context),
                thirdClassicContainer(size, context),
                firstClassicContainer(size, context),
              ]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: size.height * 0.25,
              ))
        ],
      ),
    );
  }

  Widget firstClassicContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ClassicFirstWatch();
          }));
        },
        price: const Text(
          '\$80',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Style Black \nWatch',
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

  Widget secondClassicContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ClassicSecondWatch();
          }));
        },
        price: const Text(
          '\$80',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Boll Black \nWatch',
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

  Widget thirdClassicContainer(Size size, BuildContext context) {
    return WatchContainer(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ClassicThirdWatch();
          }));
        },
        price: const Text(
          '\$280',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        title: const Text(
          'Reno Black \nWatch',
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
}
