class Shift {

  String title;
  String teacher;
  String init;
  int value;
  String local;
  int duration;
  bool favorite;
  String description;

  Shift.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        teacher = json['teacher'],
        init = json['init'],
        value = json['value'],
        local = json['local'],
        duration = json['duration'],
        favorite = json['favorite'],
        description = json['description'];

}