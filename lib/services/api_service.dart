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

  // final url = Uri.parse(
  //     'http://localhost:8000/sigaa_user_data?username=$user&password=$password');

  // final res = await http.get(url, headers: headers);

  // final status = res.statusCode;
  // if (status != 200) throw Exception('http.get error: statusCode= $status');
  // until the api goes up, im using inline json.
  String jsonString = '''
  {
    "user": {
      "image" : "https://github.com/LuisFelipeRochaMartins.png",
      "name": "John Doe",
      "password": "123",
      "subjects": [
        {
          "name": "Engenharia de Software",
          "news" : {
            "Sobre a Greve" : "Olá! Diante do contexto de GREVE da categoria askhdbasdyg uagsvu dvasu gdtast dgsaty dgvay tdvay dtasvy datdvabsdkyvasuhdbashhhjdaskjdhasyudgasdahsaskdjnaiuwgahudyasgdoyawbdakjdnaiudhyasduydasgdowadsjanduiwagyd",
            "Teste" : "Olá! Diante do contexto de GREVE da categoria",
            "Teste2" : "Olá! Diante do contexto de GREVE da categoria"
          },
          "grade": {
            "AV1": "7.8",
            "AV2": "4.2",
            "average": "6.0",
            "state": "Aprovado"
          },
          "frequency": {
            "2024-05-15": "Presente",
            "average": "20%"
          }
        },
        {
          "name": "Banco de Dados I",
          "news" : {
            "Sobre a Greve" : "Olá! Diante do contexto de GREVE da categoria",
            "Teste" : "Olá! Diante do contexto de GREVE da categoria",
            "Teste2" : "Olá! Diante do contexto de GREVE da categoria"
          },
          "grade": {
            "AV1": "7.8",
            "AV2": "4.2",
            "average": "6.0",
            "state": "Aprovado"
          },
          "frequency": {
            "2024-05-15": "3 Falta(s)",
            "2024-05-14": "Presente",
            "2024-05-13": "3 Falta(s)",
            "average": "20%"
          }
        },
        {
          "name": "Programação Orientada a Objetos",
          "news": {
            "Sobre a Greve" : "Olá! Diante do contexto de GREVE da categoria",
            "Teste" : "Olá! Diante do contexto de GREVE da categoria",
            "Teste2" : "Olá! Diante do contexto de GREVE da categoria"
          },
          "grade": {
            "AV1": "7.8",
            "AV2": "4.1",
            "average": "5.9",
            "state": "Reprovado"
          },
          "frequency": {
            "2024-05-15": "4 Falta(s)",
            "average": "20%"
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
