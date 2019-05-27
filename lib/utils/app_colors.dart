import 'dart:ui';

class AppColors {
  static Color defaultColor = HexColor("#FF651FFF");
  static Color color1 = HexColor("#9C3B26");
  static Color color2 = HexColor("#48231C");
  static Color color3 = HexColor("#44481C");
  static Color color4 = HexColor("#3E1C48");
  static Color color5 = HexColor("#48231C");
  static Color color6 = HexColor("#1C2C48");
  static Color color7 = HexColor("#1C4648");
  static Color color8 = HexColor("#0F7B80");
  static Color color9 = HexColor("#F2FF2D");

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
