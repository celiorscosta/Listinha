import 'package:realm/realm.dart';

part 'configuration_model.g.dart';
//RODAR- flutter pub run realm generate - para gerar os arquivos.

@RealmModel()
class _ConfigurationModel {
  late String themeModeName;
  late DateTime? syncDate;
}
