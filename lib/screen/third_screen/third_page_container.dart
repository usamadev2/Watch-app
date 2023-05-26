import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/third_screen/luxary_third_screen/Round_clipper.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer(
      {required this.name, required this.child, required this.title, Key? key})
      : super(key: key);

  final Widget title;
  final Widget child;
  final Widget name;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 55,
            child: Stack(
              children: [
                ClipPath(
                  clipper: RoundClipper(),
                  child: Container(
                    height: size.height * 0.4,
                    color: const Color.fromARGB(255, 4, 14, 61),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(child: Icon(Icons.favorite))),
                ),

                /// back Icon
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        )),
                  ),
                ),

                /// title
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, bottom: 70.0),
                  child: Align(alignment: Alignment.centerRight, child: title),
                ),

                ///Image
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 48.0),
                  child: Align(alignment: Alignment.centerLeft, child: child),
                )
              ],
            ),
          ),
          Expanded(
            flex: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                name,

                /// detail
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Details',
                      style: TextStyle(
                          fontSize: size.height * 0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Buy branded mens wrist watches online in Pakistan. 100% original mens quartz & automatic wrist watches in stainless steel & leather straps.Browse online catalog, designs of gents watches, check latest prices & order your favorite mens wrist watch online in Pakistan from our store.\n There is no official definition for what is considered a watch. In general, manually manufactured watches of extraordinarily high quality and with a premium price are classified as watches. A watch is a wearable computing device that closely resembles a wristwatch or other time-keeping device. In addition to telling time, many watches are Bluetooth-capable.',
                    style: TextStyle(
                        fontSize: size.height * 0.02,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
