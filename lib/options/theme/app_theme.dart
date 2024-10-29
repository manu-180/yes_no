import 'package:flutter/material.dart';

const Color customColor = Colors.red;

const List<Color> colorThemes = [
  customColor,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.black,
  Colors.brown,
];

class AppTheme extends StatelessWidget{
  const AppTheme({super.key, required this.seleccionarColor}): assert(seleccionarColor >=0 && seleccionarColor < 7, "el index solo puede ser entre 0 y ${colorThemes.length - 1}");

  final int seleccionarColor;


  ThemeData theme () {
    return ThemeData(
      colorSchemeSeed: colorThemes[seleccionarColor]
    );
  }
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}