import 'package:capstone_project/model/hospital_model.dart';

class Session {
  int id;
  String waktu;
  int max_session;
  String jadwal;
  List<HospitalModel>? id_hospitals;

  Session(
      {required this.id,
      required this.waktu,
      required this.max_session,
      required this.jadwal,
      required this.id_hospitals});

  factory Session.fromJson(Map<String, dynamic> json) {
    var list = json['id_hospitals'] as List;
    List<HospitalModel> roleList = list.map((i) => HospitalModel.fromJson(i)).toList();

    return Session(
      id: json['id'],
      waktu: json['waktu'],
      max_session: json['max_session'],
      jadwal: json['jadwal'],
      id_hospitals: roleList,
    );
  }
  factory Session.fromMap(Map<String, dynamic> json) => Session(
        id: json["id"],
        waktu: json["waktu"],
        max_session: json["max_session"],
        jadwal: json["jadwal"],
        id_hospitals: json["id_hospitals"],
      );
}
