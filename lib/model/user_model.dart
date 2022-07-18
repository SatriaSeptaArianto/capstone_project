class UserModel{
  int id;
  final String? name;
  final String? email;
  final String? password;
  int idRoles;

  UserModel({
    required this.id,
    this.name,
    this.email,
    this.password,
    required this.idRoles
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      idRoles: json['idRoles']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'password': password,
    'idRoles': idRoles
  };
}