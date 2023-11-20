import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/view/add_todo_page.dart';
import 'package:todo_app/view/utils/delete_selection_diologe.dart';
import 'package:todo_app/view/utils/styled_texts.dart';
import 'package:todo_app/view/utils/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodoBloc>(context).add(const TodoEvent.getData());
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {
        if (state.addTodo.status == StateStatus.success) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: state.todo!.status == StateStatus.success &&
                  state.todo!.data!.length < 7
              ? Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                  ),
                  child: FloatingActionButton(
                    onPressed: () async {
                      return showDialog(
                        context: context,
                        builder: (context) => const AddTodoPage(),
                      );
                    },
                    child: const Icon(Icons.add),
                  ),
                )
              : const SizedBox(),
          body: Builder(
            builder: (context) {
              switch (state.todo!.status!) {
                case StateStatus.loading:
                  return const Center(child: CircularProgressIndicator());
                case StateStatus.error:
                  return Center(
                    child: Center(
                      child:
                          StyledText.textLabel(text: "some thing went wrong"),
                    ),
                  );
                case StateStatus.success:
                   return SafeArea(
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SpaceSized.space20H,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StyledText.text20Head(text: 'TO DO List'),
                                  state.todo!.data!.isNotEmpty
                                      ? IconButton(
                                          onPressed: () async {
                                            return showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  const SelectDeleteDiologe(),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.delete_outlined,
                                            size: 40,
                                          ))
                                      : const SizedBox()
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                              ),
                              state.todo!.data!.isNotEmpty
                                  ? Expanded(
                                      child: ListView.separated(
                                          itemCount: state.todo!.data!.length,
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) =>
                                              SpaceSized.space10H,
                                          itemBuilder: (context, index) =>
                                              state.todo!.data != null &&
                                                      state.todo!.data![index]
                                                          .activities.isNotEmpty
                                                  ? TodoTile(
                                                      index: index,
                                                    )
                                                  : const SizedBox()),
                                    )
                                  : Center(
                                      child: StyledText.text20Head(
                                          text:
                                              "No Activities found\n Add new acitivities"),
                                    ),
                            ],
                          )));
                default:
                  return const SizedBox();
              }
            },
          ),
        );
      },
    );
  }
}
