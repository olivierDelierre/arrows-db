import 'package:arrows_db/src/definitions/data_models/definition_data_model.dart';
import 'package:arrows_db/src/isar_service.dart';
import 'package:isar/isar.dart';

class DefinitionDataSource {
  Future<List<DefinitionDataModel>> getDefinitions() async {
    final database = await IsarService().database;
    return database.definitionDataModels.where().findAll();
  }

  Future<void> deleteDefinition(DefinitionDataModel definition) async {
    final database = await IsarService().database;
    await database.writeTxn(() async {
      await database.definitionDataModels.delete(definition.id);
    });
  }

  Future<void> putDefinition(DefinitionDataModel definition) async {
    final database = await IsarService().database;
    await database.writeTxn(() async {
      await database.definitionDataModels.put(definition);
    });
  }
}
