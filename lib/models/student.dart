import 'dart:convert';

class Student {
  final int? id;
  final String name;
  final String email;
  Student({
    this.id,
    required this.name,
    required this.email,
  });

//de objeto para Map (enviar para o banco de dados)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source));
}
