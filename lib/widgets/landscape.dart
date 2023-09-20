// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class LandscapeWidget extends StatelessWidget {
  String? name;
  LandscapeWidget({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.landscape
            ? Container(
                margin: EdgeInsets.zero,
                child: Center(
                    child: Marquee(
                  blankSpace: 30,
                  text: name ?? '',
                  style: TextStyle(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color =
                            Color.fromARGB(255, 24, 200, 209).withOpacity(0.7),
                      letterSpacing: 20,
                      fontSize: 150,
                      fontWeight: FontWeight.w600),
                )),
              )
            : const Center(
                child: Text('Please! rotate your phone'),
              ),
      ),
    );
  }
}
