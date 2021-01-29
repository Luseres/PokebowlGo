import 'package:flutter/material.dart';

class HalfCircle extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawArc(Rect.fromCircle(center:Offset(size.width/2,size.height/0.84),radius: 500), 3.14, 3.14, false, customPaint());
  }

  Paint customPaint(){
    Paint paint = Paint();
    paint.color = Color(0xFFEB9A00);
    paint.isAntiAlias = true;
    paint.strokeWidth = 10;
    return paint;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}
