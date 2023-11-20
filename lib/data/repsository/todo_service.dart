
import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';
import 'package:todo_app/data/models/todo_model.dart';

abstract class TodoActivityServices {
  Future<void> initializeHive();
  Future<StateResponse<List<TodoModel>>> getData();

  Future<StateResponse<List<TodoModel>>> addTodo({required TodoModel todo});

  Future<StateResponse<List<TodoModel>>> markAscomplete(
      {required Days day, required int activityindex});
  Future<StateResponse<List<TodoModel>>> editActivity(
      {required Days day,
      required int? indexNomber,
      required String activity,
      required bool isEdit});
}
