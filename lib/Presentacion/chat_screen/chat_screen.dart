import 'package:app_yes_no/Presentacion/provider/chat_provider.dart';
import 'package:app_yes_no/Presentacion/widget_chat/box_mensaje.dart';
import 'package:app_yes_no/Presentacion/widget_chat/cami_mensajes.dart';
import 'package:app_yes_no/Presentacion/widget_chat/mis_mensajes.dart';
import 'package:app_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cami mi amor🖤"),
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C4E03AQFIjTMltgAWkg/profile-displayphoto-shrink_800_800/0/1643125558325?e=2147483647&v=beta&t=mPMkeHwLc4gWUScM14dPMOCm77r7MtBCDJj2bxTaGoE"),
          ),
        ),
      ),
      body: const Chat(),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              controller: chatProvider.scrollController,
              itemCount: chatProvider.mensajesList.length,
              itemBuilder: (context, index) {
                var message = chatProvider.mensajesList[index];

                return (chatProvider.mensajesList[index].quienEs == QuienEs.yo)
                ? MisMensajes(message:message)
                : CamiMensajes(message:message, imageUrl: message.url ?? "",);
                }
              )
            ),
            BoxMensaje(onValue: chatProvider.sendMenssage)
          ],
        ),
      ),
    );
  }
}