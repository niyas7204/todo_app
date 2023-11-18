import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'activity_model.g.dart';

@HiveType(typeId: 1)
class ActivityModel {
  @HiveField(0)
  final String activity;
  @HiveField(1)
  final bool isCompleted;
  ActivityModel(this.activity, this.isCompleted);
}
