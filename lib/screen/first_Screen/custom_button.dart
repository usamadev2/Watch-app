import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.child, required this.onPressed, Key? key})
      : super(key: key);
  final GestureTapCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.07,
        width: size.width * 0.190,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 250, 244, 244),
                offset: Offset(2, 2),
                blurRadius: 1,
                blurStyle: BlurStyle.solid),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: const Color.fromARGB(255, 249, 245, 245),
            width: 2,
          ),
        ),
        child: child,
      ),
    );
  }
}
