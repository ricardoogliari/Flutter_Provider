import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fiap_shift/programacao.dart';
import 'package:flutter_fiap_shift/shift.dart';

class ShiftModel extends ChangeNotifier {

  List<Shift> shifts;

  ShiftModel(){
    if (shifts == null){
      loadShifts();
    }
  }

  loadShifts() async {
    String jsonText = await rootBundle.loadString('assets/json/programacao.json');

    dynamic dyn = jsonDecode(jsonText);

    Programacao programacao = Programacao.fromJson(dyn);
    shifts = programacao.shifts;

    notifyListeners();
  }

}