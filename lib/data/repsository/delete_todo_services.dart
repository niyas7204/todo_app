import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';
import 'package:todo_app/data/models/todo_model.dart';

abstract class DeleteTodoService {
  Future<StateResponse<List<TodoModel>>> deleteAll();
  Future<StateResponse<List<TodoModel>>> deleteCompleted();
  Future<StateResponse<List<TodoModel>>> deleteActivity(
      {required Days day, required int acticityIndex});
}
