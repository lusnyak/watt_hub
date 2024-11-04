import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watt_hub_uikit/watt_hub_uikit.dart';

class WHCarouselSlider extends StatefulWidget {
  final List<String> imgList;
  final double height;
  final bool autoPlay;
  final bool showIndicator;
  final Color activeDotColor;
  final double aspectRatio;
  final Duration autoPlayInterval;

  const WHCarouselSlider({
    super.key,
    required this.imgList,
    this.height = 130.0,
    this.autoPlay = false,
    this.showIndicator = true,
    this.activeDotColor = WattHubColors.primaryGreenColor,
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
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
              if (mounted) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
          ),
          itemCount: widget.imgList.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = widget.imgList[index];
            return CachedNetworkImage(
              imageUrl: urlImage,
              placeholder: (context, err) => Container(
                decoration: const BoxDecoration(
                  color: WattHubColors.lightGrayColor,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.image_rounded,
                  color: WattHubColors.primaryBlackColor,
                ),
              ),
              errorWidget: (context, _, __) => Container(
                decoration: const BoxDecoration(
                  color: WattHubColors.lightGrayColor,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.broken_image_rounded,
                  color: WattHubColors.primaryBlackColor,
                ),
              ),
              imageBuilder: (context, imageProvider) => Container(


                decoration: BoxDecoration(
                  color: WattHubColors.lightGrayColor,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
        if (widget.showIndicator)
          WHAnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: widget.imgList.length,
          ).paddingOnly(top: 8.0).toCenter(),
      ],
    );
  }
}
