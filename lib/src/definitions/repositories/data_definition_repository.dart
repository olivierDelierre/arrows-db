import 'package:arrows_db/src/definitions/data_sources/definition_data_source.dart';
import 'package:arrows_db/src/definitions/mappers/definition_mapper.dart';
import 'package:arrows_domain/records.dart';
import 'package:arrows_domain/repositories.dart';

class DataDefinitionRepository extends DefinitionRepository {
  final DefinitionDataSource _definitionDataSource;

  DataDefinitionRepository({required DefinitionDataSource definitionDataSource})
      : _definitionDataSource = definitionDataSource;

  @override
  Future<List<DefinitionRecord>> fetchDefinitions() async {
    return DefinitionMapper()
        .toRecords(await _definitionDataSource.getDefinitions());
  }

  @override
  Future<void> addDefinition(DefinitionRecord definition) {
    return _definitionDataSource.putDefinition(
      DefinitionMapper().toDataModel(definition),
    );
  }

  @override
  Future<void> deleteDefinition(DefinitionRecord definition) {
    return _definitionDataSource.deleteDefinition(
      DefinitionMapper().toDataModel(definition),
    );
  }

  @override
  Future<void> updateDefinition(DefinitionRecord definition) {
    return _definitionDataSource.putDefinition(
      DefinitionMapper().toDataModel(definition),
    );
  }
}
