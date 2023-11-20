
import 'package:hive/hive.dart';
import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';
import 'package:todo_app/data/models/todo_model.dart';
import 'package:todo_app/data/repsository/delete_todo_services.dart';

class DeleteTodoImplimentation implements DeleteTodoService {
  @override
  Future<StateResponse<List<TodoModel>>> deleteAll() async {
    try {
      final todoBox = await Hive.openBox<TodoModel>('todo');
      await todoBox.clear();

      return StateResponse.success([]);
    } catch (e) {
      return StateResponse.error("failed to edit activity");
    }
  }

  @override
  Future<StateResponse<List<TodoModel>>> deleteCompleted() async {
    try {
      final todoBox = await Hive.openBox<TodoModel>('todo');
      final todoList = todoBox.values.toList();
      for (int i = 0; i < todoList.length; i++) {
        final activityList = todoList[i].activities;
        for (int j = 0; j < activityList.length; j++) {
          if (activityList[j].isCompleted) {
            activityList.removeAt(j);
            j--;
            if (activityList.isEmpty) {
              todoList.removeAt(i);
              todoBox.deleteAt(i);
              i = -1;
            }
          }
        }
      }

      final todo = todoBox.values.toList();
      return StateResponse.success(todo);
    } catch (e) {
      return StateResponse.error("failed to edit activity");
    }
  }

  //delete activity
  @override
  Future<StateResponse<List<TodoModel>>> deleteActivity(
      {required Days day, required int acticityIndex}) async {
    try {
      final todoBox = await Hive.openBox<TodoModel>('todo');
      final todoIndex =
          todoBox.values.toList().indexWhere((todo) => todo.day == day);
      final index = todoBox.values.toList()[todoIndex].dayindex;
      final activities = todoBox.values.toList()[todoIndex].activities;

      activities.removeAt(acticityIndex);
      if (activities.isEmpty) {
        todoBox.deleteAt(todoIndex);
      }
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
