import 'package:flutter/material.dart';

abstract class TextTheme {
  static const headline = TextStyle(
    color: Colors.black,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  static const inter = TextStyle(
    color: Colors.white,
    fontFamily: 'Semibold',
    letterSpacing: 0,
  );
  static const interg = TextStyle(
    color: Colors.grey,
    fontFamily: 'Semibold',
    letterSpacing: 0,
  );

  static final h0 = headline.copyWith(fontSize: 60);
  static final h1 = headline.copyWith(fontSize: 48);
  static final h2 = headline.copyWith(fontSize: 40);
  static final h3 = headline.copyWith(fontSize: 36);
  static final h4 = headline.copyWith(fontSize: 32);
  static final h5 = headline.copyWith(fontSize: 24);
  static final h6 = headline.copyWith(fontSize: 20);
  static final title = headline.copyWith(fontSize: 18);
  static final schedule = headline.copyWith(fontSize: 14);
  static final newstitle = headline.copyWith(fontSize: 10);

  static final cardR =
      inter.copyWith(fontSize: 16, fontWeight: FontWeight.w600);
  static final cardL =
      interg.copyWith(fontSize: 10, fontWeight: FontWeight.w600);
  static final menub =
      inter.copyWith(fontSize: 14, fontWeight: FontWeight.w600);
}
