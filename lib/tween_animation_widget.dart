import 'dart:developer';

import 'package:flutter/material.dart';

class TweenAnimationWidget extends StatelessWidget {
  const TweenAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.fastEaseInToSlowEaseOut,
      duration: const Duration(milliseconds: 1000),
      tween: ColorTween(
        begin: Colors.blue,
        end: Colors.red,
      ),
      child: const CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      builder: (context, val, child) {
        log(val.toString());

        return Padding(
          padding: const EdgeInsets.all(20),
          child: ListTile(
            tileColor: val,
            leading: child,
            title: const Text('Title'),
            subtitle: const Text('Subtitle'),
            trailing: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
