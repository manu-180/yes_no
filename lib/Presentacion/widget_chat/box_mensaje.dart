import 'package:flutter/material.dart';


class BoxMensaje extends StatelessWidget {
  BoxMensaje({super.key});

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
          print("El valor es $textValue");
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
        print("el valor de la caja de texto es: $value");
        textController.clear();
        focusNode.requestFocus();

      },
      onChanged: (value) {
      },
    );
  }
}