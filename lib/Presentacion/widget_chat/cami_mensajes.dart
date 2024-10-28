import 'package:app_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';


class CamiMensajes extends StatelessWidget {

  final Mensaje message;
  final String imageUrl;

  const CamiMensajes({super.key, required this.message, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color:color.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text(message.text, style: const TextStyle(color: Colors.white),),
          )
        ),
        const SizedBox(height: 5),
        _ImageBubble(imageUrl),
        const SizedBox(height: 5)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String url;
  const _ImageBubble(this.url);

  @override
  Widget build(BuildContext context) {
    

    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(url,
      width: size.width * 0.7,
      height: size.height * 0.2,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          width: size.width * 0.7,
          height: size.height * 0.2,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text("Cami esta mandando un mensaje"),
        );
        }
      ),
    );
  }
}