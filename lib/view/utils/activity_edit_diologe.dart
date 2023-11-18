import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/data/models/activity_model.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class EdtiActivity extends StatelessWidget {
  final Days day;
  final ActivityModel? activity;
  final int? index;
  final bool isEdit;
  const EdtiActivity(
      {super.key,
      required this.day,
      required this.activity,
      required this.index,
      required this.isEdit});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController editController = isEdit
        ? TextEditingController(text: activity!.activity)
        : TextEditingController();

    return Dialog(
      child: BlocListener<TodoBloc, TodoState>(
        listener: (context, state) {
          if (state.edit.status == StateStatus.success) {
            Navigator.pop(context);
          }
        },
        child: SizedBox(
          height: 170,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  isEdit
                      ? StyledText.text20HeadBlack(text: "Edit Activity")
                      : StyledText.text20HeadBlack(text: "Add Activity"),
                  SpaceSized.space10H,
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 220, 212, 212),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextFormField(
                      controller: editController,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      onChanged: (value) {
                        formKey.currentState!.validate();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field shouldnot empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  SpaceSized.space10H,
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          isEdit
                              ? BlocProvider.of<TodoBloc>(context).add(
                                  TodoEvent.editActivity(
                                      isEdit: true,
                                      day: day,
                                      indexNomber: index!,
                                      activity: editController.text))
                              : BlocProvider.of<TodoBloc>(context).add(
                                  TodoEvent.editActivity(
                                      isEdit: false,
                                      day: day,
                                      indexNomber: null,
                                      activity: editController.text));
                        }
                      },
                      child: StyledText.textLabel(text: "submit"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
