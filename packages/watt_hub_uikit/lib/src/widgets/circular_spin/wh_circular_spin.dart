import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

class WHCircularSpin extends StatelessWidget {
  const WHCircularSpin({
    super.key,
    this.size = 60.0,
    this.color = WattHubColors.primaryGreenColor,
  });

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return loader();
  }

  Widget loader() => SizedBox.square(
    dimension: size,
    child: SpinKitCircle(
      color: color ?? WattHubColors.primaryGreenColor,
      size: size.r,
    ),
  );
}