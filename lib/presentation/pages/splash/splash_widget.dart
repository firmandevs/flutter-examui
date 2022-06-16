import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/label.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: primaryColor,
          ),
          Center(
            child: Text(
              "examui.",
              style: poppins(textStyle: h5(context)),
            ),
          )
        ],
      ),
    );
  }
}
