part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState(
      {required StateResponse<List<TodoModel>>? todo,
      required Days daySelection,
      required StateResponse addTodo,
      required StateResponse edit,
      required StateResponse delete}) = _TodoState;
  factory TodoState.initial() => _TodoState(
      todo: StateResponse.initial(),
      addTodo: StateResponse.initial(),
      edit: StateResponse.initial(),
      delete: StateResponse.initial(),
      daySelection: Days.sunday);
}
