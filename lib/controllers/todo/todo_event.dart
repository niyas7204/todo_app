part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.selectDay({required String day}) = _selectDay;
  const factory TodoEvent.complete(
      {required Days day, required int acivityNomber}) = _complete;
  const factory TodoEvent.addTodo(
      {required Days day,
      required List<TextEditingController> controllers}) = _addTodo;
  const factory TodoEvent.editActivity(
      {required Days day,
      required int? indexNomber,
      required bool isEdit,
      required String activity}) = _editActivity;
  const factory TodoEvent.deleteActivity(
      {required Days day, required int acticityIndex}) = _deleteActivity;
  const factory TodoEvent.deleteAll() = _deleteAll;
  const factory TodoEvent.deleteCompleted() = _deleteCompleted;
  const factory TodoEvent.getData() = _getData;
}
