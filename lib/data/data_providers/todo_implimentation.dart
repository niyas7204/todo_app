

import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';

import 'package:todo_app/data/models/activity_model.dart';
import 'package:todo_app/data/models/todo_model.dart';
import 'package:todo_app/data/repsository/todo_service.dart';

class TodoImplimentation implements TodoActivityServices {
//initialize hive
  @override
  Future<void> initializeHive() async {
 
    await Hive.initFlutter();
    Hive.registerAdapter(TodoModelAdapter());
    Hive.registerAdapter(ActivityModelAdapter());
    Hive.registerAdapter(DaysAdapter());

 
  }

//Add todo
  @override
  Future<StateResponse<List<TodoModel>>> addTodo(
      {required TodoModel todo}) async {
     final todoBox = await Hive.openBox<TodoModel>('todo');

    try {
      await todoBox.add(todo);

      final todoList = todoBox.values.toList();

      return StateResponse.success(todoList);
    } catch (e) {
      return StateResponse.error('Failed to add todo');
    }
  }

  //Get all Data
  @override
  Future<StateResponse<List<TodoModel>>> getData() async {
    final todoBox = await Hive.openBox<TodoModel>('todo');
     try {
      final todo = todoBox.values.toList();
      if (todo.length > 1) {
        for (int i = 0; i < todo.length - 1; i++) {
          for (int j = 0; j < todo.length - 1; j++) {
            if (todo[j].dayindex! > todo[j + 1].dayindex!) {
              final temp = todo[j];
              todo[j] = todo[j + 1];
              todo[j + 1] = temp;
            }
          }
        }
      }
       return StateResponse.success(todo);
    } catch (e) {
       return StateResponse.error('Failed fetch Data');
    }
  }

//edit activity
  @override
  Future<StateResponse<List<TodoModel>>> editActivity(
      {required Days day,
      required int? indexNomber,
      required String activity,
      required bool isEdit}) async {
    try {
      final todoBox = await Hive.openBox<TodoModel>('todo');
      final todoIndex =
          todoBox.values.toList().indexWhere((todo) => todo.day == day);
      final activities = todoBox.values.toList()[todoIndex].activities;
      final index = todoBox.values.toList()[todoIndex].dayindex;

      isEdit
          ? activities[indexNomber!] = ActivityModel(activity, false)
          : activities.add(ActivityModel(activity, false));

      await todoBox.putAt(
          todoIndex,
          TodoModel(
            day,
            activities,
            index,
          ));
      final todo = todoBox.values.toList();
      return StateResponse.success(todo);
    } catch (e) {
      return StateResponse.error("failed to edit activity");
    }
  }

//mark activity as completed
  @override
  Future<StateResponse<List<TodoModel>>> markAscomplete(
      {required Days day, required int activityindex}) async {
    final todoBox = await Hive.openBox<TodoModel>('todo');
    try {
      final todoIndex =
          todoBox.values.toList().indexWhere((todo) => todo.day == day);
      final activities = todoBox.values.toList()[todoIndex].activities;
      final index = todoBox.values.toList()[todoIndex].dayindex;
      final activity = activities[activityindex].activity;
      activities[activityindex] = ActivityModel(activity, true);
      await todoBox.putAt(
          todoIndex,
          TodoModel(
            day,
            activities,
            index,
          ));
      final todo = todoBox.values.toList();
      return StateResponse.success(todo);
    } catch (e) {
      return StateResponse.error("failed to edit activity");
    }
  }
}
