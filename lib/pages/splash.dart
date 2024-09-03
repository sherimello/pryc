import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';
import 'package:hugeicons/hugeicons.dart';

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
                      style: NeumorphicStyle(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Neumorphic(
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
                              CupertinoIcons.exclamationmark_circle_fill, style: NeumorphicStyle(
                        color: Colors.black.withOpacity(.37)),
                            size: Get.width * .051,
                          ),
                          alignment: PlaceholderAlignment.middle),
                      TextSpan(
                        text: "  scam  ",
                        style: TextStyle(
                          fontSize: Get.width * .035,
                          fontFamily: "SF-Pro",
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      )
                    ])),
                  ),
                ),
                Neumorphic(
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
                              CupertinoIcons.arrow_swap, style: NeumorphicStyle(
                        color: Colors.black.withOpacity(.37)),
                            size: Get.width * .051,
                          ),
                          alignment: PlaceholderAlignment.middle),
                      TextSpan(
                        text: "  activity  ",
                        style: TextStyle(
                          fontSize: Get.width * .035,
                          fontFamily: "SF-Pro",
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      )
                    ])),
                  ),
                ),
                Neumorphic(
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
                              CupertinoIcons.person_crop_circle_fill_badge_checkmark, style: NeumorphicStyle(
                        color: Colors.black.withOpacity(.37)),
                            size: Get.width * .051,
                          ),
                          alignment: PlaceholderAlignment.middle),
                      TextSpan(
                        text: "  advise  ",
                        style: TextStyle(
                          fontSize: Get.width * .035,
                          fontFamily: "SF-Pro",
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      )
                    ])),
                  ),
                ),
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
                        const HugeIcon(icon: HugeIcons.strokeRoundedFolderDetails, color: Colors.black45),
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
                          HugeIcon(icon: Icons.more_vert_rounded, color: Colors.black)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.width * .077,
                    ),
                    Neumorphic(
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
                    ),
                    SizedBox(height: Get.width * .045,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Row(
                        children: [
                          Text.rich(TextSpan(children: [
                            WidgetSpan(
                                child: NeumorphicIcon(
                                  Icons.favorite_rounded, style: NeumorphicStyle(
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
                          const SizedBox(width: 11,),
                          Text.rich(TextSpan(children: [
                            WidgetSpan(
                                child: NeumorphicIcon(
                                  Icons.comment, style: NeumorphicStyle(
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
