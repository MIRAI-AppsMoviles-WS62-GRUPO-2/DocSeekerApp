class Patient {
  int id;
  String name;
  String lastname;
  String middlename;
  String gender;
  String birthdate;
  String email;
  String phone;
  String password;
  Patient(      {
      required this.id,
      required this.name,
      required this.lastname,
      required this.middlename,
      required this.gender,
      required this.birthdate,
      required this.email,
      required this.phone,
      required this.password});
  static Patient objJson(Map<String, dynamic> json) {
    return Patient(
      id: json['id'] as int,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      gender: json['gender'] as String,
      birthdate: json['birthdate'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lastname': lastname,
      'middlename': middlename,
      'gender': gender,
      'birthdate': birthdate,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }
}
