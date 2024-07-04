import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class ThirdPartDrawer extends StatelessWidget {
  const ThirdPartDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      drawer: const Drawer(),
      backdrop: Container(
        color: Colors.blue,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Screen',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'Ubuntu',
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Scaffold(
                    body: Hero(
                      tag: 'image',
                      child: Image.asset(
                        'images/logo.jpg',
                        width: 500,
                        height: 500,
                      ),
                    ),
                  ),
                ),
              );
            },
            child: Hero(
              tag: 'image',
              child: Image.asset(
                'images/logo.jpg',
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
