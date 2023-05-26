import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/first_Screen/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const hRout = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              color: const Color.fromARGB(255, 169, 168, 167),
              height: size.height * 0.3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 36.0,
                      child: Text(
                        'U',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                    Text(
                      'Usamadev3@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home_outlined,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              title: Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.notifications_none,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.dark_mode_outlined,
              ),
              title: Text(
                'Night Mode',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.access_time_rounded,
              ),
              title: Text(
                'Watchs',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on_outlined,
              ),
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        )),
        appBar: AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            actions: [
              Container(
                height: size.height * 0.13,
                width: size.width * 0.13,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 250, 244, 244),
                        offset: Offset(4, 4),
                        blurRadius: 2,
                        blurStyle: BlurStyle.solid)
                  ],
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 249, 245, 245),
                    width: 2,
                  ),
                ),
                child: Icon(
                  color: Colors.black,
                  Icons.settings,
                  size: size.height * 0.03,
                ),
              ),
            ],
            leading: Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 250, 244, 244),
                          offset: Offset(4, 4),
                          blurRadius: 2,
                          blurStyle: BlurStyle.solid)
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 249, 245, 245),
                      width: 2,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            })),
        backgroundColor: Colors.white,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Body(),
        ),
      ),
    );
  }
}
