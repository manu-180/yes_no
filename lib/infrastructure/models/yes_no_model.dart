
import 'package:app_yes_no/domain/entities/mensaje.dart';

class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Mensaje messageEntity () => Mensaje(
      text: answer == "yes" ? "si" : "no", 
      quienEs: QuienEs.ella,
      url:image);
}
