import 'package:flutter/material.dart';
import 'package:listinha/src/configuration/configuration_page.dart';

import 'home/home_page.dart';
import 'shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: dartTheme,
      routes: {
        '/': (context) => const HomePage(),
        '/config': (context) => const ConfigurationPage(),
      },
    );
  }
}
