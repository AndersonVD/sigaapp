import 'dart:convert';

import 'package:sigaapp/models/user.dart';
import 'package:http/http.dart' as http;

Future<User> getUserFromJson(String user, String password) async {
  final headers = {
    'Accept': 'application/json',
    'Accept-Encoding': 'gzip, deflate',
    'Accept-Language': 'pt-BR,pt;q=0.9',
    'Connection': 'keep-alive',
    'Cookie':
        'wp-settings-1=libraryContent%3Dbrowse; wp-settings-time-1=1714706795',
    'Host': 'localhost:8000',
    'Referer': 'http://localhost:8000/docs',
    'Sec-Fetch-Dest': 'empty',
    'Sec-Fetch-Mode': 'cors',
    'Sec-Fetch-Site': 'same-origin',
    'User-Agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15',
  };

  final url = Uri.parse(
      'http://localhost:8000/sigaa_user_data?username=$user&password=$password');

  // final res = await http.get(url, headers: headers);

  // final status = res.statusCode;
  // if (status != 200) throw Exception('http.get error: statusCode= $status');
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
  User _user = User.fromJson(userMap);
  return _user;
}
