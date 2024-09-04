import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';
import 'package:hugeicons/hugeicons.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        depth: 15,
        boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.circular(55)),
        color: Colors.grey.shade400,
        intensity: 3,
      ),
      child: Container(
        width: Get.width,
        height: Get.width * .49,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Colors.purple,
        //       Colors.transparent,
        //       Colors.tealAccent
        //     ]
        //   )
        // ),
        // padding: EdgeInsets.all(3),

        child: Neumorphic(
          curve: Neumorphic.DEFAULT_CURVE,
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            depth: -5,
            color: Colors.grey,
            boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.circular(55)),
            // color: Colors.grey.shade400,
            intensity: 15,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Opacity(
                  opacity: .45,
                  child: Image.asset("assets/images/img_1.png",
                    height: Get.width * .49,
                    width: Get.width,
                    fit: BoxFit.cover,
                    color: Colors.black,
                    colorBlendMode: BlendMode.color,
                  ),
                ),
              ),
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(102)),
                    depth: 15,
                    intensity: 7,
                    lightSource: LightSource.topLeft,
                    color: Colors.white.withOpacity(.57)),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(102)),
                      depth: 7,
                      intensity: 7,
                      lightSource: LightSource.topLeft,
                      color: Colors.grey.shade300),
                  padding: const EdgeInsets.all(9),
                  // margin: EdgeInsets.all(11),
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedPlay,
                    // icon: Icons.play_arrow_rounded,
                    size: Get.width * .1,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
