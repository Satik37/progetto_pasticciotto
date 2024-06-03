import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  // final int index;
  final String imagePath;

  const ImageWidget({
    Key? key,
    //  required this.index,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 150,
        width: double.infinity,
        child: Card(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      );
}
