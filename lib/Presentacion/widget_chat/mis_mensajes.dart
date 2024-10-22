import 'package:app_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';


class MisMensajes extends StatelessWidget {

  final Mensaje message;

  const MisMensajes({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color:color.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text(message.text, style: const TextStyle(color: Colors.white),),
          )
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}