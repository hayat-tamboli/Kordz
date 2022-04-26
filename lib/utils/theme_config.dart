import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<ThemeData> getThemes() {
  return [
    lighttheme,
    // darktheme,
  ];
}

//light theme
ThemeData lighttheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: CardTheme(
    clipBehavior: Clip.hardEdge,
    color: const Color(0xffEEEFF2),
    elevation: 0,
    shape: SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: 32,
        cornerSmoothing: 1,
      ),
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Color(0xff1A1A1A)),
    helperStyle: TextStyle(color: Color(0xff656E85)),
    hintStyle: TextStyle(color: Color(0xff656E85)),
    filled: true,
    isDense: true,
    fillColor: Colors.white,
    hoverColor: Colors.white,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    border: InputBorder.none,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: Color(0xffE2E4E8)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: Color(0xff2561ED)),
    ),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.white,
    elevation: 0,
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: Color(0xFF1A1A1A),
    backgroundColor: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  primaryColor: const Color(0xff4893D9),
  primaryColorDark: const Color(0xffBD3A4A),
  colorScheme: const ColorScheme(
    background: Colors.white,
    brightness: Brightness.light,
    onBackground: Color(0xff1a1a1a),
    primary: Color(0xff4893D9),
    onPrimary: Colors.white,
    secondary: Color(0xff1B4ACB),
    onSecondary: Colors.white,
    surface: Colors.white,
    onSurface: Color(0xff1a1a1a),
    error: Color(0xffFD4C62),
    onError: Colors.white,
  ),
  fontFamily: 'F37 Ginger',
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: Color(0xffFD4C62),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    foregroundColor: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    selectedItemColor: Color(0xff2dadc2),
  ),
);

// ThemeData darktheme = ThemeData(
//   brightness: Brightness.dark,
//   visualDensity: VisualDensity.adaptivePlatformDensity,
//   cardTheme: const CardTheme(
//     color: Color(0xff1a1a1a),
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(20)),
//         side: BorderSide(color: Color(0xff111111), width: 2)),
//     elevation: 10,
//   ),
//   listTileTheme: const ListTileThemeData(iconColor: Colors.white),
//   scaffoldBackgroundColor: Colors.black,
//   inputDecorationTheme: const InputDecorationTheme(
//     labelStyle: TextStyle(color: Color(0xffffffff)),
//     helperStyle: TextStyle(color: Color(0xff656E85)),
//     hintStyle: TextStyle(color: Color(0xff656E85)),
//     prefixIconColor: Color(0xff656E85),
//     filled: true,
//     isDense: true,
//     fillColor: Colors.black,
//     hoverColor: Colors.black,
//     floatingLabelBehavior: FloatingLabelBehavior.never,
//     border: InputBorder.none,
//     enabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(Radius.circular(8.0)),
//       borderSide: BorderSide(color: Color.fromARGB(255, 61, 61, 61)),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(Radius.circular(8.0)),
//       borderSide: BorderSide(color: Color(0xff2561ED)),
//     ),
//   ),
//   bottomAppBarTheme: const BottomAppBarTheme(
//     color: Color(0xFF0E0E0E),
//     elevation: 0,
//   ),
//   //done
//   appBarTheme: const AppBarTheme(
//     foregroundColor: Colors.white,
//     backgroundColor: Color(0xFF0E0E0E),
//     elevation: 0,
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: Color(0xff0e0e0e),
//       statusBarIconBrightness: Brightness.light, // For Android (dark icons)
//       statusBarBrightness: Brightness.dark, // For iOS (dark icons)
//     ),
//     iconTheme: IconThemeData(
//       color: Colors.white,
//     ),
//   ),
//   primaryColor: const Color(0xffFD4C62),
//   primaryColorDark: const Color(0xffBD3A4A),
//   colorScheme: const ColorScheme(
//     background: Colors.black,
//     brightness: Brightness.dark,
//     onBackground: Colors.white,
//     primary: Color(0xffFD4C62),
//     onPrimary: Colors.white,
//     secondary: Color(0xff2561ED),
//     onSecondary: Colors.white,
//     surface: Colors.white,
//     onSurface: Color(0xff1a1a1a),
//     error: Color(0xffFD4C62),
//     onError: Colors.white,
//   ),
//   fontFamily: 'F37 Ginger',
//   floatingActionButtonTheme: const FloatingActionButtonThemeData(
//     elevation: 0,
//     backgroundColor: Color(0xffFD4C62),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(16)),
//     ),
//     foregroundColor: Colors.white,
//   ),
//   //done
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     backgroundColor: Color(0xFF0E0E0E),
//     elevation: 0,
//     selectedItemColor: Color(0xff2dadc2),
//   ),
// );
