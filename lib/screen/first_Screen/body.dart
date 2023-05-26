import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/first_Screen/featured_top.dart';

import 'bottom_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Flexible(flex: 45, child: FeaturedWidget()),
      Flexible(flex: 55, child: BottomWidget()),
    ]);
  }
}
