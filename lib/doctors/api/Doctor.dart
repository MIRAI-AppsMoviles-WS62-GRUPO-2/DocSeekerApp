class Doctor{
  int id;
  String name;
  String lastname;
  String middlename;
  String speciality;
  String gender;
  String email;
  String phone;
  Doctor({
    required this.id,
    required this.name,
    required this.lastname,
    required this.middlename,
    required this.speciality,
    required this.gender,
    required this.email,
    required this.phone
  });
  static Doctor objJson(Map<String, dynamic> json){
    return Doctor(
      id: json['id'] as int,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      speciality: json['speciality'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );
  }
}