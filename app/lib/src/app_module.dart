import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/home/home_module.dart';
import 'package:listinha/src/shared/stores/app_store.dart';

import 'configuration/configuration_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => AppStore()),
        //AutoBind.sigleton(AppStore.new) Versão nova.
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
