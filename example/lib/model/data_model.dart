import 'package:flutter/cupertino.dart';

class DataModel {
  final String? title;
  final String? subTitle;
  final String? image;
  final String? actionText;
  final Color? actionBgColor;
  final List<Color> gradientColors;

  DataModel({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.actionText,
    required this.actionBgColor,
    required this.gradientColors,
  });
}
