class HospitalModel{
  int id;
  final String? name;
  final String? address;
  final String? linkMaps;
  int idUsers;
  int idProvinces;

  HospitalModel({
    required this.id,
    this.name,
    this.address,
    this.linkMaps,
    required this.idUsers,
    required this.idProvinces
  });

  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      linkMaps: json['linkMaps'],
      idUsers: json['idUsers'],
      idProvinces: json['idProvinces']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'address': address,
    'linkMaps': linkMaps,
    'idUsers': idUsers,
    'idProvinces': idProvinces
  };
}