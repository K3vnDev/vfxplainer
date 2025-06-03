import 'package:flutter/material.dart';
import 'package:vfxplainer/utils/consts.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.name, this.header = false});

  final String name;
  final bool header;

  double get paddingX => header ? 0 : Consts.horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingX,
        right: paddingX,
        top: header ? 0 : 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(header ? 0 : 5),
        child: Image.asset(
          "assets/images/$name.jpg",
          width: 400,
          height: 220,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
