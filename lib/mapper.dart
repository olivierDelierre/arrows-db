abstract class Mapper<D, R> {
  R toRecord(D dataModel);
  D toDataModel(R record);

  List<R> toRecords(List<D> dataModels) =>
      dataModels.map((dataModel) => toRecord(dataModel)).toList();

  List<D> toDataModels(List<R> records) =>
      records.map((record) => toDataModel(record)).toList();
}
