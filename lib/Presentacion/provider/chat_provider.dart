import 'package:app_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{
  List <Mensaje> mensajesList = [
    Mensaje(text: "Mi amor", quienEs: QuienEs.yo),
    Mensaje(text: "Te amoo", quienEs: QuienEs.yo),
    Mensaje(text: "Yo mass", quienEs: QuienEs.ella),
    Mensaje(text: "Noo bb yoo mass", quienEs: QuienEs.yo),
    Mensaje(text: "Noo yoo", quienEs: QuienEs.ella),
    Mensaje(text: "Yo infinitamente", quienEs: QuienEs.yo),
  ];

  Future<void> sendMenssage(String text) async{

  }

}

