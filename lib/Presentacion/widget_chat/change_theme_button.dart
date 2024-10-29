import 'package:app_yes_no/Presentacion/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Align(
      alignment: Alignment.topRight,
      child: FloatingActionButton(
        onPressed: themeProvider.toggleTheme,
        backgroundColor: color.primary,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), 
          side: const BorderSide(color: Colors.white, width: 2), 
        ),
        child: const Icon(Icons.palette, color: Colors.white, size: 38,),
      )
    );
  }
}