import 'package:flutter/material.dart';

import '../styles/colors.dart';

final subAppBar = ({
  void Function()? leftOnPressed,
  void Function()? rightOnPressed,
  List<Widget>? actionWidget,
  bool? isAutoLeading,
  Widget? title,
  Color? color,
  Color? leftIconColor,
}) =>
    AppBar(
      automaticallyImplyLeading: isAutoLeading ?? false,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: IconButton(
            onPressed: leftOnPressed,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: leftIconColor ?? black,
              size: 30.0,
            ),
          ),
        ),
      ),
      centerTitle: false,
      title: title ?? Text(""),
      actions: actionWidget,
      shadowColor: grey,
      backgroundColor: color ?? white.withOpacity(0.0),
      elevation: 0.0,
    );
