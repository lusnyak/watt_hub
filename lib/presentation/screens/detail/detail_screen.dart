import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Center(
          child: Text(
            "Detail Screen!",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
