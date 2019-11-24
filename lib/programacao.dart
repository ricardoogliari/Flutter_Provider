import 'package:flutter_fiap_shift/shift.dart';

class Programacao {

  List<Shift> shifts;

  Programacao.fromJson(dynamic json)
      : shifts = encodeToShiftList(json);

}

List<Shift> encodeToShiftList(List list){
  List<Shift> jsonList = List<Shift>();

  if (list != null) {
    list.map((item) =>
        jsonList.add(Shift.fromJson(item))
    ).toList();
  }
  return jsonList;
}