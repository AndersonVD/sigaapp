import 'dart:convert';

import 'package:sigaapp/models/user.dart';

Future<User> getUserFromJson() async {
  // until the api goes up, im using inline json.
  String jsonString = '''
  {
    "user": {
      "name": "John Doe",
      "password": "123",
      "subjects": [
        {
          "name": "Engenharia de Software",
          "grade": "9.8",
          "frequency": {
            "2024-05-15": "Presente"
          }
        },
        {
          "name": "Banco de Dados I",
          "grade": "9.8",
          "frequency": {
            "2024-05-15": "3 Falta(s)",
            "2024-05-14": "Presente",
            "2024-05-13": "3 Falta(s)"
          }
        },
        {
          "name": "Programação Orientada a Objetos",
          "grade": "9.8",
          "frequency": {
            "2024-05-15": "4 Falta(s)"
          }
        }
      ]
    }
  }
  ''';

  Map<String, dynamic> userMap = jsonDecode(jsonString)['user'];
  User user = User.fromJson(userMap);
  return user;
}