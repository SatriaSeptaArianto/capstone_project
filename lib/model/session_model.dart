class SessionModel{
  int id;
  final String? waktu;
  final int? jumlahAntrian;
  final DateTime? jadwal;
  int idHospitals;
  int idVaccines;

  SessionModel({
    required this.id,
    this.waktu,
    this.jumlahAntrian,
    this.jadwal,
    required this.idHospitals,
    required this.idVaccines
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) {
    return SessionModel(
      id: json['id'],
      waktu: json['waktu'],
      jumlahAntrian: json['jumlahAntrian'],
      jadwal: json['jadwal'],
      idHospitals: json['idHospitals'],
      idVaccines: json['idVaccines']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'waktu': waktu,
    'jumlahAntrian': jumlahAntrian,
    'jadwal': jadwal,
    'idHospitals': idHospitals,
    'idVaccines': idVaccines
  };
}