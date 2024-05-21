class Subject {
  String? name;
  Map<String, String>? frequency;
  Map<String, String>? grade;
  Map<String, String>? news;

  Subject({
    this.name,
    this.frequency,
    this.grade,
    this.news
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      name : json['name'],
      frequency: Map<String, String>.from(json['frequency']),
      grade : Map<String, String>.from(json['grade']),
      news : Map<String, String>.from(json['news'])
    );
  }
}