import 'package:flutter/material.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class ActivityTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const ActivityTextField(
      {super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText.textLabel(text: label),
        Container(
          height: 56,
          width: double.infinity,
          decoration: ShapeDecoration(
            color: const Color.fromARGB(255, 220, 212, 212),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: TextField(
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            controller: controller,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
