import 'package:flutter/material.dart';


class BoxMensaje extends StatelessWidget {
  BoxMensaje({super.key, required this.onValue});

  final ValueChanged<String> onValue;

  final textController = TextEditingController();

  final focusNode = FocusNode();

  final outlineInputBorder = OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30)
        );

  late final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder ,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(onPressed: () {
          final textValue = textController.value.text;
          textController.clear();
          onValue(textValue);
        }, icon: const Icon(Icons.send_outlined)),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();

      },
      onChanged: (value) {
      },
    );
  }
}