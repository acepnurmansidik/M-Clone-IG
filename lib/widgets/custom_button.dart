import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsets margin;
  final Color bgColor;
  final Function() onPressd;
  final Color borderColor;
  final Color textColor;
  final String title;
  final String iconName;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressd,
    required this.bgColor,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.margin = EdgeInsets.zero,
    this.iconName = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: TextButton(
        onPressed: onPressd,
        style: TextButton.styleFrom(backgroundColor: bgColor),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (iconName.isNotEmpty)
                Container(
                  height: 20,
                  width: 20,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(iconName),
                    ),
                  ),
                ),
              Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                  letterSpacing: 1.5,
                  color: textColor,
                ),
              ),
            ]),
      ),
    );
  }
}
