import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';
import 'package:todo_app/data/models/activity_model.dart';
import 'package:todo_app/data/models/todo_model.dart';
import 'package:todo_app/data/repsository/delete_todo_services.dart';
import 'package:todo_app/data/repsository/todo_service.dart';
import 'package:todo_app/view/utils/alert_widgets.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoActivityServices todoService;
  final DeleteTodoService deleteService;
  TodoBloc(this.todoService, this.deleteService) : super(TodoState.initial()) {
    final AlertDiologeWidgets alertcontroller = Get.put(AlertDiologeWidgets());
    //To select for add todo
    on<_selectDay>((event, emit) {
      Days day;

      switch (event.day) {
        case "MON":
          day = Days.monday;
          break;
        case "TUE":
          day = Days.tuesday;
          break;
        case "WED":
          day = Days.wednesday;
          break;
        case "THU":
          day = Days.thursday;
          break;
        case "FRI":
          day = Days.friday;
          break;
        case "SAT":
          day = Days.saturday;
          break;
        case "SUN":
          day = Days.sunday;
          break;
        default:
          day = Days.monday;
      }
      emit(state.copyWith(daySelection: day));
    });
    //logic to add todo
    on<_addTodo>((event, emit) async {
      emit(state.copyWith(addTodo: StateResponse.loading()));
      List<ActivityModel> activities = [];
      bool flag = false;
      for (int i = 0; i < event.controllers.length; i++) {
        if (event.controllers[i].text.isNotEmpty) {
          flag = true;
          ActivityModel activity =
              ActivityModel(event.controllers[i].text, false);

          activities.add(activity);
        }
      }
      if (flag) {
        int index;
        switch (event.day) {
          case Days.monday:
            index = 1;

            break;
          case Days.tuesday:
            index = 2;

            break;
          case Days.wednesday:
            index = 3;

            break;
          case Days.thursday:
            index = 4;

            break;
          case Days.friday:
            index = 5;

            break;
          case Days.saturday:
            index = 6;

            break;
          case Days.sunday:
            index = 7;

            break;
          default:
            index = 1;
        }
        await todoService.addTodo(
            todo: TodoModel(
          event.day,
          activities,
          index,
        ));
        final response = await todoService.getData();
        if (response.status == StateStatus.success) {
          emit(state.copyWith(
              todo: StateResponse.success(response.data),
              addTodo: StateResponse.success(response.data)));
          emit(state.copyWith(addTodo: StateResponse.initial()));
        } else if (response.status == StateStatus.error) {
          emit(
              state.copyWith(todo: StateResponse.error(response.errorMessage)));
        }
      } else {
        alertcontroller.warningAlert("Add atleat one activity");
      }
    });
    on<_getData>((event, emit) async {
      emit(state.copyWith(
        todo: StateResponse.loading(),
      ));
      final response = await todoService.getData();
      if (response.status == StateStatus.success) {
        emit(state.copyWith(todo: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        emit(state.copyWith(todo: StateResponse.error(response.errorMessage)));
      }
    });
    //edit activity
    on<_editActivity>((event, emit) async {
      emit(
        state.copyWith(
            todo: StateResponse.loading(), edit: StateResponse.loading()),
      );
      event.isEdit
          ? await todoService.editActivity(
              day: event.day,
              isEdit: event.isEdit,
              indexNomber: event.indexNomber!,
              activity: event.activity)
          : await todoService.editActivity(
              day: event.day,
              isEdit: event.isEdit,
              indexNomber: null,
              activity: event.activity);
      final response = await todoService.getData();

      if (response.status == StateStatus.success) {
        emit(state.copyWith(
            todo: StateResponse.success(response.data),
            edit: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        emit(state.copyWith(todo: StateResponse.error(response.errorMessage)));
      }
    });
    //delete activity
    on<_deleteActivity>((event, emit) async {
      emit(state.copyWith(delete: StateResponse.loading()));
      bool confirm = await alertcontroller
          .confirmAlert("Are you sure want to delete this activity");
      if (confirm) {
        await deleteService.deleteActivity(
          day: event.day,
          acticityIndex: event.acticityIndex,
        );
        final response = await todoService.getData();
        if (response.status == StateStatus.success) {
          emit(state.copyWith(
              todo: StateResponse.success(response.data),
              delete: StateResponse.success(response.data)));
        } else if (response.status == StateStatus.error) {
          emit(state.copyWith(
              delete: StateResponse.error("delet failed"),
              todo: StateResponse.error(response.errorMessage)));
        }
      }
    });
    on<_deleteAll>((event, emit) async {
      emit(state.copyWith(delete: StateResponse.loading()));
      bool confirm = await alertcontroller
          .confirmAlert("Are you sure want to deletem all");
      if (confirm) {
        await deleteService.deleteAll();
        final response = await todoService.getData();
        if (response.status == StateStatus.success) {
          emit(state.copyWith(
              todo: StateResponse.success(response.data),
              delete: StateResponse.success(response.data)));
        } else if (response.status == StateStatus.error) {
          emit(state.copyWith(
            delete: StateResponse.error("delet failed"),
          ));
        }
      }
    });
    on<_deleteCompleted>((event, emit) async {
      emit(state.copyWith(delete: StateResponse.loading()));
      bool confirm = await alertcontroller
          .confirmAlert("Are you sure want to delete all completed");
      if (confirm) {
        await deleteService.deleteCompleted();
        final response = await todoService.getData();
        if (response.status == StateStatus.success) {
          emit(state.copyWith(
              todo: StateResponse.success(response.data),
              delete: StateResponse.success(response.data)));
        } else if (response.status == StateStatus.error) {
          emit(state.copyWith(
            delete: StateResponse.error("delet failed"),
          ));
        }
      }
    });
    on<_complete>((event, emit) async {
      emit(state.copyWith(
        todo: StateResponse.loading(),
      ));
      await todoService.markAscomplete(
          day: event.day, activityindex: event.acivityNomber);
      final response = await todoService.getData();
      if (response.status == StateStatus.success) {
        emit(state.copyWith(todo: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        emit(
            state.copyWith(delete: StateResponse.error(response.errorMessage)));
      }
    });
  }
}
