import 'package:app_yes_no/Presentacion/chat_screen/chat_screen.dart';
import 'package:app_yes_no/Presentacion/provider/chat_provider.dart';
import 'package:app_yes_no/options/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: const AppTheme(seleccionarColor: 6,).theme(),
        home: const ChatScreen()
      ),
    );
  }
}