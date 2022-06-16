import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../styles/colors.dart';
import '../../styles/label.dart';
import '../../widgets/appbar.dart';
import '../../widgets/container/rounded_container.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  automaticallyImplyLeading: false,
                  shadowColor: white,
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  collapsedHeight: 320,
                  expandedHeight: 350,
                  floating: true,
                  pinned: true,
                  flexibleSpace: Container(
                    child: Stack(
                      alignment: AlignmentDirectional.topCenter,
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        _backBgCover(),
                      ],
                    ),
                  ),
                ),
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.only(top: 330.0),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Class",
                            style: poppins(
                                textStyle: bodyLarge(context),
                                color: primaryColor),
                          ),
                          TextSpan(
                            text: "  Rank",
                            style: poppins(
                                textStyle: bodyLarge(context),
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      height: 85,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _rankItem(
                            imagePath: "assets/images/avatar.jpg",
                            name: "Fadhil Alkantara",
                            points: "198",
                            star: true,
                          ),
                          _rankItem(
                            imagePath: "assets/images/avatar-female.jpg",
                            name: "Nafisha Alena",
                            points: "198",
                            star: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        color: backgroundColor.withOpacity(0.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 26, bottom: 12),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Available",
                                    style: poppins(
                                      textStyle: bodyLarge(context),
                                      color: primaryColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "  Lessons",
                                    style: poppins(
                                        textStyle: bodyLarge(context),
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  _themeItem(
                                      context: context,
                                      time: "12 min, 35 sec",
                                      title: "Introduction",
                                      presentage: 0.6,
                                      imagePath: "assets/images/theme1.jpeg",
                                      progressColor: Colors.blue.shade200),
                                  _themeItem(
                                      context: context,
                                      time: "18 min, 42 sec",
                                      title:
                                          "Present Simple & Present Continous",
                                      presentage: 0.8,
                                      imagePath: "assets/images/theme3.jpeg",
                                      progressColor: Colors.yellow.shade300),
                                  _themeItem(
                                      context: context,
                                      time: "32 min, 15 sec",
                                      title: "Past Simple & Past Continous",
                                      imagePath: "assets/images/theme2.jpeg",
                                      presentage: 0.5,
                                      progressColor: Colors.teal.shade200),
                                  _themeItem(
                                      context: context,
                                      time: "40 min, 30 sec",
                                      title: "Future Simple & Future Continous",
                                      imagePath: "assets/images/theme1.jpeg",
                                      presentage: 0.9,
                                      progressColor: Colors.pinkAccent.shade100
                                          .withOpacity(0.7)),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }

  RoundedContainer _themeItem({
    required BuildContext context,
    required String title,
    required String time,
    required String imagePath,
    required double presentage,
    required Color progressColor,
  }) {
    return RoundedContainer(
        padding: EdgeInsets.all(8),
        radius: 30,
        color: white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          imagePath,
                          width: 82,
                          height: 82,
                          fit: BoxFit.cover,
                        )),
                    Center(
                      child: RoundedContainer(
                        margin: EdgeInsets.all(24),
                        padding: EdgeInsets.all(4.0),
                        border: 3,
                        color: Colors.grey.shade200,
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: primaryColor,
                          size: 16,
                        ),
                        isShadow: false,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14, left: 10),
                        child: Text(
                          time,
                          style: poppins(
                            color: grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          title,
                          style: poppins(
                              color: black, textStyle: bodySmall(context)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.0, bottom: 12.0),
                        child: new LinearPercentIndicator(
                          backgroundColor: backgroundColor,
                          width: MediaQuery.of(context).size.width - 180,
                          animation: true,
                          lineHeight: 6.0,
                          animationDuration: 2500,
                          percent: presentage,
                          barRadius: Radius.circular(20),
                          progressColor: progressColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, right: 8.0),
              child: Icon(
                EvaIcons.moreHorizontal,
                size: 18,
                color: Colors.blueGrey.shade200,
              ),
            )
          ],
        ),
        isShadow: false);
  }

  Widget _rankItem({
    required String imagePath,
    required String name,
    required String points,
    required bool star,
  }) {
    return Stack(
      children: [
        RoundedContainer(
            margin: EdgeInsets.all(10),
            radius: 30,
            color: primaryColor.withOpacity(0.07),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      imagePath,
                      width: 52,
                      height: 52,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$points Points",
                        style: poppins(
                          color: grey,
                        ),
                      ),
                      Text(
                        name,
                        style: poppins(
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6.0,
                )
              ],
            ),
            isShadow: false),
        Positioned(
            bottom: 0,
            left: 6,
            child: RoundedContainer(
              padding: EdgeInsets.all(4.0),
              border: 3,
              color: star ? Colors.yellowAccent.shade400 : Colors.grey.shade200,
              child: Icon(
                Icons.star,
                color: star ? Colors.yellow.shade800 : grey,
                size: 14,
              ),
              isShadow: false,
            ))
      ],
    );
  }

  Container _backBgCover() {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Hero(
                tag: "Juan Arianto",
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner-course.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 50.0)),
                  ),
                ),
              ),
            ),
            Positioned(
              left: -130,
              top: -80,
              child: RoundedContainer(
                  radius: 100,
                  borderColor: primaryColor,
                  color: primaryColor,
                  child: Container(
                    width: 200,
                    height: 200,
                  ),
                  isShadow: false),
            ),
            subAppBar(
                leftIconColor: white,
                leftOnPressed: () {
                  context.router.pop();
                }),
            // AppBar(
            //   backgroundColor: Colors.transparent,
            //   leading: Icon(
            //     EvaIcons.chevronLeftOutline,
            //     color: white,
            //   ),
            // ),
            Positioned(
              bottom: 110,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: kToolbarHeight + 100, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Juan",
                      style: poppins(
                        textStyle: h5(context),
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      "Arianto",
                      style: poppins(
                        textStyle: h5(context),
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                      width: 14,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_fill_rounded,
                          color: primaryColor,
                          size: 20,
                        ),
                        Text(
                          "  14 Day. 2 hours. 32 min.",
                          style: poppins(
                              textStyle: bodyLarge(context),
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
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
