import 'dart:js';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/home/widgets/home_module.dart';

import 'configuration/configuration_page.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}