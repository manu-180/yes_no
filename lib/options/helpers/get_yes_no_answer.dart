
import 'package:app_yes_no/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';
import 'package:app_yes_no/domain/entities/mensaje.dart';

class GetYesNoAnswer {

  final _dio = Dio();


  Future<Mensaje> getAnswer() async{
    
    final response = await _dio.get("https://yesno.wtf/api");

    final yesNomodel = YesNoModel.fromJson(response.data);

    return yesNomodel.messageEntity();
  
  }
}