import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.06477733);
    path_0.cubicTo(0, size.height * 0.04210310, 0, size.height * 0.03076599,
        size.width * 0.007898068, size.height * 0.02210567);
    path_0.cubicTo(
        size.width * 0.01484543,
        size.height * 0.01448772,
        size.width * 0.02593092,
        size.height * 0.008294211,
        size.width * 0.03956594,
        size.height * 0.004412686);
    path_0.cubicTo(size.width * 0.05506667, 0, size.width * 0.07535845, 0,
        size.width * 0.1159420, 0);
    path_0.lineTo(size.width * 0.8840580, 0);
    path_0.cubicTo(size.width * 0.9246425, 0, size.width * 0.9449324, 0,
        size.width * 0.9604348, size.height * 0.004412686);
    path_0.cubicTo(
        size.width * 0.9740700,
        size.height * 0.008294211,
        size.width * 0.9851546,
        size.height * 0.01448772,
        size.width * 0.9921014,
        size.height * 0.02210567);
    path_0.cubicTo(size.width, size.height * 0.03076599, size.width,
        size.height * 0.04210310, size.width, size.height * 0.06477733);
    path_0.lineTo(size.width, size.height * 0.9352227);
    path_0.cubicTo(
        size.width,
        size.height * 0.9578974,
        size.width,
        size.height * 0.9692335,
        size.width * 0.9921014,
        size.height * 0.9778947);
    path_0.cubicTo(
        size.width * 0.9851546,
        size.height * 0.9855128,
        size.width * 0.9740700,
        size.height * 0.9917058,
        size.width * 0.9604348,
        size.height * 0.9955870);
    path_0.cubicTo(size.width * 0.9449324, size.height, size.width * 0.9246425,
        size.height, size.width * 0.8840580, size.height);
    path_0.lineTo(size.width * 0.1159420, size.height);
    path_0.cubicTo(
        size.width * 0.07535845,
        size.height,
        size.width * 0.05506667,
        size.height,
        size.width * 0.03956594,
        size.height * 0.9955870);
    path_0.cubicTo(
        size.width * 0.02593092,
        size.height * 0.9917058,
        size.width * 0.01484543,
        size.height * 0.9855128,
        size.width * 0.007898068,
        size.height * 0.9778947);
    path_0.cubicTo(0, size.height * 0.9692335, 0, size.height * 0.9578974, 0,
        size.height * 0.9352227);
    path_0.lineTo(0, size.height * 0.06477733);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
