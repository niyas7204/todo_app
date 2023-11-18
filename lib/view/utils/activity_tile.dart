import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/view/utils/activity_edit_diologe.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class ActivityTile extends StatelessWidget {
  final int index;
  final int listIndex;
  const ActivityTile({super.key, required this.index, required this.listIndex});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {
        if (state.delete.status == StateStatus.success) {
          if (state.todo!.data![index].activities.isEmpty) {
            Navigator.pop(context);
          }
        }
      },
      builder: (context, state) {
        final activity = state.todo!.data![index].activities[listIndex];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText.textLabel(text: "${listIndex + 1}.${activity.activity}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (context) => EdtiActivity(
                          day: state.todo!.data![index].day,
                          isEdit: true,
                          activity: activity,
                          index: listIndex,
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<TodoBloc>(context).add(
                          TodoEvent.deleteActivity(
                              day: state.todo!.data![index].day,
                              acticityIndex: listIndex));
                    },
                    icon: const Icon(Icons.delete)),
                !activity.isCompleted
                    ? Checkbox(
                        value: activity.isCompleted,
                        onChanged: (value) {
                          BlocProvider.of<TodoBloc>(context).add(
                              TodoEvent.complete(
                                  day: state.todo!.data![index].day,
                                  acivityNomber: listIndex));
                        },
                      )
                    : StyledText.textLabel(text: "Completed"),
              ],
            ),
          ],
        );
      },
    );
  }
}
