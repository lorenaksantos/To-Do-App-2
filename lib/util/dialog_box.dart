import 'package:flutter/material.dart';
import 'package:to_do_app_2/util/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // get user input
          TextField(
            controller: controller,
            maxLines: null, // Allow multiple lines input
            keyboardType: TextInputType.multiline, // multiple lines
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add new task",
            ),
          ),

          // buttons -> save & cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Save button
              MyButtons(text: "Save", onPressed: onSave),

              const SizedBox(width: 25),

              // Cancel button
              MyButtons(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ]),
      ),
    );
  }
}
