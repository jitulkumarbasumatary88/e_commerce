import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class CartItems extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get productId => integer()();

  TextColumn get title => text()();

  RealColumn get price => real()();

  TextColumn get thumbnail => text().nullable()();

  IntColumn get quantity => integer().withDefault(const Constant(1))();

  TextColumn get category => text().nullable()();

  RealColumn get rating => real().nullable()();
}

@DriftDatabase(tables: [CartItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'e_commerce_db'));

  @override
  int get schemaVersion => 1;
}
