import 'package:flutter/material.dart';

class IconWrap extends StatelessWidget {
  final String iconName;
  final double size;
  final EdgeInsets margin;
  final Color color;

  const IconWrap({
    super.key,
    required this.iconName,
    required this.size,
    required this.color,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          image: AssetImage('assets/$iconName.png'),
        ),
      ),
    );
  }
}
