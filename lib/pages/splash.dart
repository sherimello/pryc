import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:pryc/widgets/rounded_options_card.dart';

import '../widgets/video_card.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              CupertinoColors.black.withOpacity(.75),
              Colors.grey.shade200
            ])),
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(Get.width * .067),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            depth: -5,
                            intensity: 7,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey.shade400),
                        padding: const EdgeInsets.all(9),
                        // margin: EdgeInsets.all(11),
                        child: const HugeIcon(
                          icon: HugeIcons.strokeRoundedMenu01,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    // SizedBox(width: 11,),
                    NeumorphicText(
                      "pryc",
                      curve: Neumorphic.DEFAULT_CURVE.flipped,
                      textStyle: NeumorphicTextStyle(
                          fontFamily: "SF-Pro",
                          fontSize: Get.width * .077,
                          fontWeight: FontWeight.bold),
                      style: const NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                        color: Colors.black45,
                        // color: Colors.white.withOpacity(.57),
                        depth: 15,
                        intensity: 11,
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
                            depth: -5,
                            intensity: 7,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey.shade400),
                        padding: const EdgeInsets.all(9),
                        // margin: EdgeInsets.all(11),
                        child: const Icon(
                          CupertinoIcons.person,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedOptionsCard(
                    iconData: CupertinoIcons.exclamationmark_circle_fill,
                    tag: "scam"),
                RoundedOptionsCard(
                    iconData: CupertinoIcons.arrow_swap, tag: "activity"),
                RoundedOptionsCard(
                    iconData:
                        CupertinoIcons.person_crop_circle_fill_badge_checkmark,
                    tag: "advise")
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Get.width * .067),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const HugeIcon(
                            icon: HugeIcons.strokeRoundedFolderDetails,
                            color: Colors.black45),
                        NeumorphicText(
                          "  your video details",
                          curve: Neumorphic.DEFAULT_CURVE.flipped,
                          textStyle: NeumorphicTextStyle(
                              height: 0,
                              fontFamily: "SF-Pro",
                              fontSize: Get.width * .057,
                              fontWeight: FontWeight.bold),
                          style: const NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            color: Colors.black45,
                            // color: Colors.white.withOpacity(.57),
                            depth: 15,
                            intensity: 11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.width * .057,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NeumorphicText(
                            "Description about their\nactivity, staff, marketing, shops etc.",
                            curve: Neumorphic.DEFAULT_CURVE.flipped,
                            textAlign: TextAlign.start,
                            textStyle: NeumorphicTextStyle(
                                height: 0,
                                fontFamily: "SF-Pro",
                                fontSize: Get.width * .031,
                                fontWeight: FontWeight.bold),
                            style: const NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              color: Colors.black,
                              // color: Colors.white.withOpacity(.57),
                              depth: 15,
                              intensity: 11,
                            ),
                          ),
                          const HugeIcon(
                              icon: Icons.more_vert_rounded,
                              color: Colors.black)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.width * .077,
                    ),
                    VideoCard(),
                    SizedBox(
                      height: Get.width * .045,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Row(
                        children: [
                          Text.rich(TextSpan(children: [
                            WidgetSpan(
                                child: NeumorphicIcon(
                                  Icons.favorite_rounded,
                                  style: const NeumorphicStyle(
                                      color: Colors.black45),
                                  size: Get.width * .045,
                                ),
                                alignment: PlaceholderAlignment.middle),
                            TextSpan(
                              text: "  1.25k  ",
                              style: TextStyle(
                                fontSize: Get.width * .031,
                                fontFamily: "SF-Pro",
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,
                              ),
                            )
                          ])),
                          const SizedBox(
                            width: 11,
                          ),
                          Text.rich(TextSpan(children: [
                            WidgetSpan(
                                child: NeumorphicIcon(
                                  Icons.comment,
                                  style: const NeumorphicStyle(
                                      color: Colors.black45),
                                  size: Get.width * .045,
                                ),
                                alignment: PlaceholderAlignment.middle),
                            TextSpan(
                              text: "  755  ",
                              style: TextStyle(
                                fontSize: Get.width * .031,
                                fontFamily: "SF-Pro",
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,
                              ),
                            )
                          ]))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: NeumorphicText(
                        "video performance",
                        curve: Neumorphic.DEFAULT_CURVE.flipped,
                        textStyle: NeumorphicTextStyle(
                            height: 0,
                            fontFamily: "SF-Pro",
                            fontSize: Get.width * .041,
                            fontWeight: FontWeight.bold),
                        style: const NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          color: Colors.black,
                          // color: Colors.white.withOpacity(.57),
                          depth: 15,
                          intensity: 11,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: NeumorphicText(
                        "impressions: 20k  Views: 15k  Watch-time: 290 mins",
                        curve: Neumorphic.DEFAULT_CURVE.flipped,
                        textStyle: NeumorphicTextStyle(
                            height: 0,
                            fontFamily: "SF-Pro",
                            fontSize: Get.width * .031,
                            fontWeight: FontWeight.bold),
                        style: const NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          color: Colors.white,
                          // color: Colors.white.withOpacity(.57),
                          depth: 15,
                          intensity: 11,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
