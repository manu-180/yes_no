import 'package:app_yes_no/domain/entities/mensaje.dart';
import 'package:app_yes_no/options/helpers/get_yes_no_answer.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController scrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List <Mensaje> mensajesList = [
  ];

  Future<void> herReply() async{
    final herMessage = await getYesNoAnswer.getAnswer();
    mensajesList.add(herMessage);
    notifyListeners();
    moveScrollButton();
  }

  Future<void> sendMenssage(String text) async{

    if (text.isEmpty) return;

    final newMessage = Mensaje(text: text, quienEs: QuienEs.yo);
    mensajesList.add(newMessage);

    if (text.endsWith("?")) {
      herReply();
    }

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

