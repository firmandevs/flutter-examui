import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../routes/router.gr.dart';
import '../../styles/colors.dart';
import '../../styles/label.dart';
import '../../widgets/container/rounded_container.dart';
import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index = 0;

  List<String> proposedName = [
    "Mario Adnan",
    "Juan Arianto",
    "Kahfi Ayaz",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: RoundedContainer(
                    radius: 24,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    color: primaryColor,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image.asset(
                            "assets/images/banner.png",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Text(
                                  "There is still time to start the examuis",
                                  style: poppins(color: white),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  _countDownItem(
                                      firstNumber: "0",
                                      secondtNumber: "3",
                                      title: "Days"),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  _countDownItem(
                                      firstNumber: "2",
                                      secondtNumber: "1",
                                      title: "Hours"),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  _countDownItem(
                                      firstNumber: "1",
                                      secondtNumber: "4",
                                      title: "Minutes"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    shadowColor: primaryColor.withOpacity(0.4),
                    blurRadius: 15.0,
                    isShadow: true,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _progressTestItem(
                      background: Colors.lightBlue.shade100,
                      presentage: 0.7,
                      title: "Data Science\ncomplete",
                      done: "31",
                      task: "50"),
                  _progressTestItem(
                      background: Colors.pink.shade100,
                      presentage: 0.5,
                      title: "Personal Dev\ncomplete",
                      done: "8",
                      task: "16"),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 30.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Proposed",
                            style: poppins(
                                textStyle: bodyLarge(context),
                                color: primaryColor)),
                        TextSpan(
                            text: " Courses",
                            style: poppins(
                                textStyle: bodyLarge(context),
                                color: primaryColor,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  ),
                  Container(
                    height: 190,
                    child: PageView.builder(
                        padEnds: true,
                        pageSnapping: true,
                        allowImplicitScrolling: true,
                        controller: PageController(viewportFraction: 0.4),
                        onPageChanged: (int index) => setState(() {
                              _index = index;
                            }),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              context.router.push(CoursePageRoute());
                            },
                            child: Hero(
                              tag: proposedName[index],
                              child: Transform.scale(
                                  alignment: Alignment.topCenter,
                                  scale: _index == index ? 1 : 0.95,
                                  child: Container(
                                    child: RoundedContainer(
                                      padding: EdgeInsets.all(0),
                                      radius: 30,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              child: Image.asset(
                                                "assets/images/proposed${index + 1}.jpg",
                                                width: 350,
                                                height: 450,
                                                fit: BoxFit.cover,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 18.0,
                                                horizontal: 16.0),
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: proposedName[index]
                                                        .split(" ")[0],
                                                    style: poppins(
                                                        textStyle:
                                                            bodyLarge(context),
                                                        color: primaryColor)),
                                                TextSpan(
                                                    text:
                                                        "\n${proposedName[index].split(" ")[1]}",
                                                    style: poppins(
                                                        textStyle:
                                                            bodyLarge(context),
                                                        color: primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ]),
                                            ),
                                          )
                                        ],
                                      ),
                                      isShadow: false,
                                    ),
                                  )),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _progressTestItem({
    required Color background,
    required double presentage,
    required String title,
    required String done,
    required String task,
  }) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              backgroundColor: background,
              width: 100,
              animation: true,
              lineHeight: 10.0,
              animationDuration: 2500,
              percent: presentage,
              barRadius: Radius.circular(20),
              progressColor: primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$done ",
                      style: poppins(
                        textStyle: h5(context),
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: '/ $task',
                      style: poppins(
                        textStyle: bodySmall(context),
                        color: grey,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                title,
                style: poppins(
                  textStyle: bodySmall(context),
                  color: black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Transform.translate(
      offset: Offset(0.0, 0.0),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.0),
                blurRadius: 30,
              ),
            ],
          ),
          margin: EdgeInsets.only(left: 0, right: 0),
          child: ClipRRect(
              child: BottomAppBar(
            color: white,
            shape: CircularNotchedRectangle(),
            notchMargin: 10.0,
            clipBehavior: Clip.hardEdge,
            child: Container(
              padding: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: BottomNavigationBar(
                elevation: 0,
                selectedItemColor: primaryColor,
                unselectedItemColor: primaryColor.withOpacity(0.3),
                backgroundColor: white,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                // currentIndex: _selectedIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        EvaIcons.homeOutline,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        EvaIcons.videoOutline,
                      ),
                      label: 'Appointment'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.auto_graph_outlined,
                      ),
                      label: 'Hold Appointment'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        EvaIcons.personOutline,
                      ),
                      label: 'Profile'),
                ],
                // onTap: onTapped,
              ),
            ),
          ))),
    );
  }

  Column _countDownItem({
    required String firstNumber,
    required String secondtNumber,
    required String title,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 40,
                height: 52,
                child: RoundedContainer(
                    color: white,
                    radius: 13,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: Center(
                      child: Text(
                        firstNumber,
                        style: poppins(
                            textStyle: h5(context),
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    isShadow: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 40,
                height: 52,
                child: RoundedContainer(
                    color: white,
                    radius: 13,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: Center(
                      child: Text(
                        secondtNumber,
                        style: poppins(
                            textStyle: h5(context),
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    isShadow: true),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            title,
            style: poppins(
              textStyle: bodySmall(context),
              color: white,
            ),
          ),
        )
      ],
    );
  }
}
