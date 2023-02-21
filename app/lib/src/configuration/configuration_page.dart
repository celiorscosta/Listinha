import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../shared/stores/app_store.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>((store) => store.themeMode);

    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTINHA'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Tema',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: appStore.themeMode.value,
              title: Text(
                'Sistema',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile(
              value: ThemeMode.system,
              groupValue: appStore.themeMode.value,
              title: const Text('Claro'),
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode.value,
              title: const Text('Escuro'),
              onChanged: appStore.changeThemeMode,
            ),
            const SizedBox(height: 20),
            const Text('Controle de Dados'),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Apagar cache e reiniciar app',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
