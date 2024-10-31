import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/src/theme/theme.dart';

import '../widgets.dart';

class WHCarouselSlider extends StatefulWidget {
  final List<String> imgList;
  final double height;
  final bool autoPlay;
  final bool showIndicator;
  final Color activeDotColor;
  final Color dotColor;
  final double dotHeight;
  final double dotWidth;
  final double spacing;
  final double aspectRatio;
  final Duration autoPlayInterval;

  const WHCarouselSlider({
    super.key,
    required this.imgList,
    this.height = 130.0,
    this.autoPlay = false,
    this.showIndicator = true,
    this.activeDotColor = WattHubColors.primaryGreenColor,
    this.dotColor = WattHubColors.primaryLightGreenColor,
    this.dotHeight = 12.0,
    this.dotWidth = 12.0,
    this.spacing = 8.0,
    this.aspectRatio = 16 / 9,
    this.autoPlayInterval = const Duration(seconds: 3),
  });

  @override
  WHCarouselSliderState createState() => WHCarouselSliderState();
}

class WHCarouselSliderState extends State<WHCarouselSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.imgList.isEmpty) {
      return const Center(child: Text("No images available"));
    }

    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: widget.height,
            autoPlay: widget.autoPlay,
            autoPlayInterval: widget.autoPlayInterval,
            enlargeCenterPage: true,
            aspectRatio: widget.aspectRatio,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          itemCount: widget.imgList.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = widget.imgList[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              color: Colors.grey,
              child: Image.network(
                urlImage,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: WHCircularSpin());
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, color: Colors.grey),
              ),
            );
          },
        ),
        if (widget.showIndicator)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: WHAnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: widget.imgList.length,
            ),
          ),
      ],
    );
  }
}
