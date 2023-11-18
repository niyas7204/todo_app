import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/data/models/activity_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel {
  @HiveField(0)
  final Days day;
  @HiveField(1)
  final List<ActivityModel> activities;
  @HiveField(3)
  final int? dayindex;
  TodoModel(this.day, this.activities, this.dayindex);
}
