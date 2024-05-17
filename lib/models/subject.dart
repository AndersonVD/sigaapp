class Subject {
  String? name;
  Map<String, String>? frequency;
  String? grade;

  Subject({
    this.name,
    this.frequency,
    this.grade
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      name : json['name'],
      frequency: Map<String, String>.from(json['frequency']),
      grade : json['grade']
    );
  }
}