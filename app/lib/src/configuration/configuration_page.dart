import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
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
              groupValue: ThemeMode.system,
              title: Text(
                'Sistema',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onChanged: (mode) {},
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: ThemeMode.light,
              title: const Text('Claro'),
              onChanged: (mode) {},
            ),
            RadioListTile(
              value: ThemeMode.dark,
              groupValue: ThemeMode.light,
              title: const Text('Escuro'),
              onChanged: (mode) {},
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
