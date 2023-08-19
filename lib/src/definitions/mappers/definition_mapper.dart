import 'package:arrows_db/src/definitions/data_models/definition_data_model.dart';
import 'package:arrows_db/mapper.dart';
import 'package:arrows_domain/records.dart';

class DefinitionMapper extends Mapper<DefinitionDataModel, DefinitionRecord> {
  @override
  DefinitionRecord toRecord(DefinitionDataModel dataModel) {
    return (
      words: List.of(dataModel.words, growable: true),
      definition: dataModel.definition,
    );
  }

  @override
  DefinitionDataModel toDataModel(DefinitionRecord record) {
    return DefinitionDataModel()
      ..words = record.words
      ..definition = record.definition;
  }
}
