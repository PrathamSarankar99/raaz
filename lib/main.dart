import 'package:flutter/material.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/pages/home_page.dart';

void main() {
  Config.template.initialize();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Config.template.lightTheme,
      darkTheme: Config.template.darkTheme,
      themeMode: Config.darkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
