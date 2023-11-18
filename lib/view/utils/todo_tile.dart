import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/data/models/todo_model.dart';
import 'package:todo_app/view/utils/show_activities.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class TodoTile extends StatelessWidget {
  final int index;
  const TodoTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledText.textLabel(text: state.todo!.data![index].day.name),
              SpaceSized.space10H,
              GestureDetector(
                onTap: () async {
                  return showDialog(
                    context: context,
                    builder: (context) => ShowActivitiesDiologe(
                      index: index,
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 209, 209),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: StyledText.textLabel(text: 'Activities'),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
