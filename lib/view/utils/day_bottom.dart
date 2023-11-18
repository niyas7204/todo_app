import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/core/enums/days_enum.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class DayButton extends StatelessWidget {
  final String label;

  const DayButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    String selection;
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        switch (state.daySelection) {
          case Days.monday:
            selection = "MON";
            break;
          case Days.tuesday:
            selection = "TUE";
            break;
          case Days.wednesday:
            selection = "WED";
            break;
          case Days.thursday:
            selection = "THU";
            break;
          case Days.friday:
            selection = "FRI";
            break;
          case Days.saturday:
            selection = "SAT";
            break;
          case Days.sunday:
            selection = "SUN";
            break;
          default:
            selection = "MON";
        }
        return GestureDetector(
          onTap: () {
            BlocProvider.of<TodoBloc>(context)
                .add(TodoEvent.selectDay(day: label));
          },
          child: Container(
            width: 100,
            decoration: BoxDecoration(
                color: selection == label
                    ? const Color(0xFFE06D1A)
                    : const Color.fromARGB(255, 237, 222, 222),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: StyledText.textLabel(text: label),
            ),
          ),
        );
      },
    );
  }
}
