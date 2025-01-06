import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';

class StraightLine extends StatelessWidget {
  final EdgeInsets margin;
  final String title;

  const StraightLine({
    super.key,
    required this.margin,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: kGreyColor.withOpacity(.5),
              thickness: 1,
            ),
          ),
          if (title.isNotEmpty)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor.withOpacity(.5),
                ),
              ),
            ),
          if (title.isNotEmpty)
            Expanded(
              child: Divider(
                color: kGreyColor.withOpacity(.5),
                thickness: 1,
              ),
            ),
        ],
      ),
    );
  }
}

class DotLine extends StatelessWidget {
  final EdgeInsets margin;
  final String title;

  const DotLine({
    super.key,
    required this.margin,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Expanded(
            child: CustomPaint(
              size: const Size(double.infinity, 2),
              painter: DashedLinePainter(
                lineColor: kGreyColor.withOpacity(.5),
                spaceLine: 7,
                strokeLine: 1.7,
              ),
            ),
          ),
          if (title.isNotEmpty)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor.withOpacity(.5),
                ),
              ),
            ),
          if (title.isNotEmpty)
            Expanded(
              child: CustomPaint(
                size: const Size(double.infinity, 2),
                painter: DashedLinePainter(
                  lineColor: kGreyColor.withOpacity(.5),
                  spaceLine: 7,
                  strokeLine: 1.7,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color lineColor;
  final double spaceLine;
  final double strokeLine;

  DashedLinePainter(
      {required this.lineColor, this.spaceLine = 0, this.strokeLine = 0.3});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = lineColor
      ..strokeWidth = strokeLine;

    double dashWidth = 7;
    double dashSpace = spaceLine;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
