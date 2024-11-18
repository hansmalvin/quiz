import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  String _themeName = 'Tema A';
  String _fontName = 'Open Sans';

  ThemeData getTheme() {
    switch (_themeName) {
      case 'Tema B':
        return ThemeData(
            primarySwatch: Colors.brown,
            scaffoldBackgroundColor: Colors.brown[500]);
      case 'Tema C':
        return ThemeData(
            primarySwatch: Colors.green,
            scaffoldBackgroundColor: Colors.grey[500]);
      case 'Tema D':
        return ThemeData(
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: Colors.pink[500]);
      case 'Tema E':
        return ThemeData(
            primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.red[500]);
      case 'Tema F':
        return ThemeData(
            primarySwatch: Colors.orange,
            scaffoldBackgroundColor: Colors.yellow[500]);
      default:
        return ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.blue[500]);
    }
  }

  TextStyle getTextStyle() {
    switch (_fontName) {
      case 'Montserrat':
        return GoogleFonts.montserrat(
          fontSize: 18,
          color: Colors.black,
        );
      case 'Nunito':
        return GoogleFonts.nunito(
          fontSize: 18,
          color: Colors.black,
        );
      case 'Poppins':
        return GoogleFonts.poppins(
          fontSize: 18,
          color: Colors.black,
        );
      default:
        return GoogleFonts.openSans(
          fontSize: 18,
          color: Colors.black,
        );
    }
  }

  void setTheme(String themeName) {
    _themeName = themeName;
    notifyListeners();
  }

  void setFont(String fontName) {
    _fontName = fontName;
    notifyListeners();
  }
  String get themeName => _themeName;
  String get fontName => _fontName;
}
