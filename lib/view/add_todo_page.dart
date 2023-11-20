import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/view/utils/activity_text_field.dart';
import 'package:todo_app/view/utils/day_bottom.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controllers = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
    List<String> days = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          bool isContains = state.todo!.data!
              .any((element) => element.day == state.daySelection);
          if (isContains) {
           }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: StyledText.text15Head(text: 'Add to do list'),
                ),
                SpaceSized.space10H,
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            DayButton(label: days[index]),
                        separatorBuilder: (context, index) =>
                            SpaceSized.space10w,
                        itemCount: days.length),
                  ),
                ),
                isContains
                    ? Center(
                        child: Column(
                          children: [
                            StyledText.text20Head(
                                text:
                                    "${state.daySelection.name} alread exist"),
                            StyledText.textLabel(
                                text: "You can edit the existing one"),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          width: double.infinity,
                          child: ListView.separated(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  ActivityTextField(
                                      label: "Activity ${index + 1}",
                                      controller: controllers[index]),
                              separatorBuilder: (context, index) =>
                                  SpaceSized.space20H,
                              itemCount: controllers.length),
                        ),
                      ),
                isContains
                    ? const SizedBox()
                    : Center(
                        child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<TodoBloc>(context).add(
                                  TodoEvent.addTodo(
                                      day: state.daySelection,
                                      controllers: controllers));
                            },
                            child: StyledText.textLabel(text: 'ADD')),
                      ),
                SpaceSized.space20H,
              ],
            ),
          );
        },
      ),
    );
  }
}
