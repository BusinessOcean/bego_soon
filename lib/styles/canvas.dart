import 'package:flutter/material.dart';

class TextWithBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const text = 'Hello, Flutter!';
    const textStyle = TextStyle(
      fontSize: 20,
      color: Colors.black,
    );

    const textSpan = TextSpan(text: text, style: textStyle);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width)
      ..paint(canvas, Offset.zero);

    // Draw underline
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;
    final lineOffset =
        Offset(0, textPainter.height + 2); // Adjust the offset as needed
    final lineEnd = Offset(textPainter.width, textPainter.height + 2);
    canvas.drawLine(lineOffset, lineEnd, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
