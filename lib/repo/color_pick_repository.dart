import 'dart:math';
import 'dart:ui';

import 'package:flutter_test_app/utils/app_colors.dart';

class ColorPickRepository {
  List<Color> listColors = [
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
    AppColors.color4,
    AppColors.color5,
    AppColors.color6,
    AppColors.color7,
    AppColors.color8,
    AppColors.color9,
  ];
  Color getRandomColor() {
    return listColors[Random().nextInt(9)];
  }
}