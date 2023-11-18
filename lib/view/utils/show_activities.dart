import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/data/models/todo_model.dart';
import 'package:todo_app/view/utils/activity_edit_diologe.dart';
import 'package:todo_app/view/utils/activity_tile.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class ShowActivitiesDiologe extends StatelessWidget {
  final int index;
  const ShowActivitiesDiologe({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {
        if (state.delete.status == StateStatus.success) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Dialog(
          child: SingleChildScrollView(
            child: state.todo!.data != null && state.todo!.data!.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledText.text15Head(
                            text:
                                "${state.todo!.data![index].day.name} Activities"),
                        SpaceSized.space10w,
                        StyledText.textLabel(
                            text: "(put \u2713 when complete)"),
                        const Divider(),
                        SizedBox(
                          width: double.infinity,
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, listIndex) => ActivityTile(
                                    index: index,
                                    listIndex: listIndex,
                                  ),
                              separatorBuilder: (context, index) =>
                                  SpaceSized.space10H,
                              itemCount:
                                  state.todo!.data![index].activities.length),
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () async {
                                await showDialog(
                                  context: context,
                                  builder: (context) => EdtiActivity(
                                      isEdit: false,
                                      day: state.todo!.data![index].day,
                                      activity: null,
                                      index: null),
                                );
                              },
                              child:
                                  StyledText.text20Head(text: "Add Activity")),
                        )
                      ],
                    ),
                  )
                : const SizedBox(),
          ),
        );
      },
    );
  }
}
