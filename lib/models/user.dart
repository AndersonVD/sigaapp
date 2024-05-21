import 'package:sigaapp/models/subject.dart';

class User {
  String? name;
  String? password;
  List<Subject>? subjects;
  String? image;

  User({
    this.name,
    this.password,
    this.subjects,
    this.image
  });

  factory User.fromJson(Map<String, dynamic> json) {
    var subjectsFromJson = json['subjects'] as List;
    List<Subject> subjectsList = subjectsFromJson.map((subject) => Subject.fromJson(subject)).toList();

    return User(
      name: json['name'],
      password: json['password'],
      subjects: subjectsList,
      image: json['image']
    );
  }
}
