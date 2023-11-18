import 'package:hive_flutter/hive_flutter.dart';
part 'days_enum.g.dart';

@HiveType(typeId: 2) // Unique ID for the adapter
enum Days {
  @HiveField(0)
  monday,

  @HiveField(1)
  tuesday,

  @HiveField(2)
  wednesday,

  @HiveField(3)
  thursday,

  @HiveField(4)
  friday,

  @HiveField(5)
  saturday,

  @HiveField(6)
  sunday,
}
