import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';

class RoundedOptionsCard extends StatelessWidget {

  final IconData iconData;
  final String tag;

  const RoundedOptionsCard({super.key, required this.iconData, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        depth: 9,
        boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.circular(102)),
        color: Colors.grey.shade400,
        intensity: 9,
      ),
      margin: EdgeInsets.all(7),
      child: Neumorphic(
        curve: Neumorphic.DEFAULT_CURVE,
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          depth: -5,
          boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(102)),
          color: Colors.grey.shade400,
          intensity: 9,
        ),
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 11),
        child: Text.rich(TextSpan(children: [
          WidgetSpan(
              child: NeumorphicIcon(
                iconData, style: NeumorphicStyle(
                  color: Colors.black.withOpacity(.37)),
                size: Get.width * .051,
              ),
              alignment: PlaceholderAlignment.middle),
          TextSpan(
            text: "  $tag  ",
            style: TextStyle(
              fontSize: Get.width * .035,
              fontFamily: "SF-Pro",
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          )
        ])),
      ),
    );
  }
}
