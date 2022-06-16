import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import '../../../styles/label.dart';
import '../../../widgets/container/rounded_container.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kToolbarHeight - 20,
        ),
        Padding(
          padding: const EdgeInsets.all(28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RoundedContainer(
                    radius: 100,
                    border: 5.0,
                    color: Colors.blueGrey.shade200,
                    padding: EdgeInsets.all(0.0),
                    isShadow: true,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "assets/images/avatar.jpg",
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fadhil Alkantara",
                          style: poppins(
                              color: grey, textStyle: bodyLarge(context)),
                        ),
                        Text(
                          "Physics, Mathematics",
                          style: poppins(color: grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              RoundedContainer(
                  radius: 16,
                  color: Colors.indigo.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RotatedBox(
                        quarterTurns: -1,
                        child: Icon(
                          EvaIcons.barChart2Outline,
                          color: primaryColor,
                          size: 20,
                        )),
                  ),
                  isShadow: false),
            ],
          ),
        ),
      ],
    );
  }
}
