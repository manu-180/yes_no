import 'package:app_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController scrollController = ScrollController();

  List <Mensaje> mensajesList = [
    Mensaje(text: "Mi amor", quienEs: QuienEs.yo),
    Mensaje(text: "Te amoo", quienEs: QuienEs.yo),
    Mensaje(text: "Yo mass", quienEs: QuienEs.ella),
  ];

  Future<void> sendMenssage(String text) async{

    if (text.isEmpty) return;

    final newMessage = Mensaje(text: text, quienEs: QuienEs.yo);
    mensajesList.add(newMessage);
    notifyListeners();
    moveScrollButton();
  }

  Future<void> moveScrollButton() async{
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
  }

}

