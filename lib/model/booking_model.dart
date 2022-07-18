class BookingModel{
  int id;
  final String? bookedCode;
  final bool? status;
  int idUsers;
  int idHospitals;
  int idSessions;

  BookingModel({
    required this.id,
    this.bookedCode,
    this.status,
    required this.idUsers,
    required this.idHospitals,
    required this.idSessions
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    return BookingModel(
      id: json['id'],
      bookedCode: json['bookedCode'],
      status: json['status'],
      idUsers: json['idUsers'],
      idHospitals: json['idHospitals'],
      idSessions: json['idSessions']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'bookedCode': bookedCode,
    'status': status,
    'idUsers': idUsers,
    'idHospitals': idHospitals,
    'idSessions': idSessions
  };
}