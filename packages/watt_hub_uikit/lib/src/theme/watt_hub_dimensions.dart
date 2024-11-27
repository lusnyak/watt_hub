import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

EdgeInsets get paddingV16 => EdgeInsets.symmetric(vertical: 16.h);
EdgeInsets get paddingV20 => EdgeInsets.symmetric(vertical: 20.h);

EdgeInsets get paddingH10 => EdgeInsets.symmetric(vertical: 10.h);
EdgeInsets get paddingV20H10 =>
    EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w);

EdgeInsets get paddingAll20 => EdgeInsets.all(20.r);

//Radius and borders
RoundedRectangleBorder get roundedBorder6 =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r));

RoundedRectangleBorder get roundedBorderShape14 =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r));
BorderRadiusGeometry get roundedBorder14 => BorderRadius.circular(14.r);
BorderRadiusGeometry get roundedBorder50 => BorderRadius.circular(50.r);

BorderRadius get leftRoundedBorder => BorderRadius.only(
    bottomLeft: Radius.circular(15.r), topLeft: Radius.circular(15.r));

BorderRadius get rightRoundedBorder => BorderRadius.only(
    bottomRight: Radius.circular(15.r), topRight: Radius.circular(15.r));
