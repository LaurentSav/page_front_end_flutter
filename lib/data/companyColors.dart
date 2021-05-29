
import 'dart:ui';

class companyColors{

  final deepPurple = HexColor("#241C52");
  final lightPurple = HexColor("#37459C");
  final lightGrey = HexColor("#D1D1D8");
  final skygrey = HexColor("#EAEDFF");
  final yellow = HexColor("#FFB900");
  final bluegreen = HexColor("#5FD08D");

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