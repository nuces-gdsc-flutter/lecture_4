import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double width = 100;
  double height = 100;
  Color color = Colors.red;

  BoxShape shape = BoxShape.rectangle;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      opacity: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            width = 200;
            height = 200;
            color = Colors.blue;
            shape = BoxShape.circle;
          });
        },
        onLongPress: () {
          setState(() {
            width = 100;
            height = 100;
            color = Colors.red;
            shape = BoxShape.rectangle;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            shape: shape,
          ),
        ),
      ),
    );
  }
}
