import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHAnimatedSmoothIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;
  final Color activeDotColor;
  final Color dotColor;
  final double dotHeight;
  final double dotWidth;
  final double spacing;

  const WHAnimatedSmoothIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
    this.activeDotColor = WattHubColors.primaryGreenColor,
    this.dotColor = WattHubColors.primaryLightGreenColor,
    this.dotHeight = 12.0,
    this.dotWidth = 12.0,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
      effect: SlideEffect(
        activeDotColor: activeDotColor,
        dotColor: dotColor,
        dotHeight: dotHeight,
        dotWidth: dotWidth,
        spacing: spacing,
      ),
    );
  }
}
