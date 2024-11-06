import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WHRatingBar extends StatelessWidget {
  const WHRatingBar({
    super.key,
    this.initialRating = 3,
    this.minRating = 1,
    this.direction = Axis.horizontal,
    this.itemCount = 5,
    this.itemSize = 50.0,
    this.allowHalfRating = false,
    this.color = Colors.amber,
    this.icon = Icons.star_rate_rounded,
  });
  final double initialRating;
  final double minRating;
  final Axis direction;
  final int itemCount;
  final double itemSize;
  final bool allowHalfRating;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: minRating,
      direction: direction,
      allowHalfRating: allowHalfRating,
      itemCount: itemCount,
      itemSize: itemSize,
      itemBuilder: (context, _) => Icon(
        icon,
        color: color,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
