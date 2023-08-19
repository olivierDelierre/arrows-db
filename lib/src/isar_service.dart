import 'package:isar/isar.dart';

class IsarService {
  static IsarService? _cachedService;

  late Future<Isar> _database;
  Future<Isar> get database async => await _database;

  factory IsarService() => _cachedService ??= IsarService._();

  IsarService._() {
    _database = _openDatabase();
  }

  Future<Isar> _openDatabase() async {
    return Future.value(Isar.getInstance());
  }
}
