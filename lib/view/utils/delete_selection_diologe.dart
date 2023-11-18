import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/authentication/authentication_bloc.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class SelectDeleteDiologe extends StatelessWidget {
  const SelectDeleteDiologe({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: StyledText.text20HeadBlack(text: "DELETE"),
              ),
              InkWell(
                onTap: () {
                  BlocProvider.of<TodoBloc>(context)
                      .add(const TodoEvent.deleteAll());
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Container(
                      child:
                          StyledText.text15Head(text: "Delete all Activities"),
                    ),
                    SpaceSized.space10w,
                    const Icon(Icons.delete)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  BlocProvider.of<TodoBloc>(context)
                      .add(const TodoEvent.deleteCompleted());
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Container(
                      child:
                          StyledText.text15Head(text: "Delete all completed"),
                    ),
                    SpaceSized.space10w,
                    const Icon(Icons.delete)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
