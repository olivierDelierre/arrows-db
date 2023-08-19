import 'package:isar/isar.dart';

part 'definition_data_model.g.dart';

@collection
class DefinitionDataModel {
  Id id = Isar.autoIncrement;
  late String definition;
  late List<String> words;
}
