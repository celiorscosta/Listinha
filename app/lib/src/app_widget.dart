import 'package:flutter/material.dart';

import '../main.dart';
import 'shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: dartTheme,
      home: const MyHomePage(title: 'Listinha'),
    );
  }
}
