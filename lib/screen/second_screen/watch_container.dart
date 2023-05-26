import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/second_screen/custom_Cliper.dart';

class WatchContainer extends StatelessWidget {
  const WatchContainer(
      {required this.onPressed,
      required this.child,
      required this.title,
      required this.price,
      Key? key})
      : super(key: key);

  final GestureTapCallback onPressed;
  final Widget child;
  final Widget title;
  final Widget price;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onPressed,
      child: Stack(children: [
        /// Container

        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
              clipper: CustomShap(),
              child: Container(
                height: size.height * 0.18,
                color: Colors.white,
              )),
        ),

        /// Icons Widget

        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              child: Icon(
                Icons.favorite_rounded,
              ),
            ),
          ),
        ),

        /// Image Widget

        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Align(alignment: Alignment.topCenter, child: child),
        ),

        /// Widget title

        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
          child: Align(alignment: Alignment.bottomLeft, child: title),
        ),

        /// Widget Price
        Padding(
          padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
          child: Align(alignment: Alignment.bottomRight, child: price),
        ),
      ]),
    );
  }
}
