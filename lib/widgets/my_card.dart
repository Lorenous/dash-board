import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Column(
        children: [
          Container(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
