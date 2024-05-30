import 'dart:convert';
import 'package:http/http.dart' as http;

class SmartLotoRest<T> {
  final String baseUrl;
  SmartLotoRest(this.baseUrl);

  Future<T?> get(String endpoint, T Function(dynamic) fromJson) async {
    var url = Uri.parse('$baseUrl$endpoint');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<T?> post(String endpoint, Map<String, dynamic> body, T Function(dynamic) fromJson, Authentication? auth) async {
    var basicAuth = auth != null ? 'Basic ${base64Encode(utf8.encode('rzp_test_4wZO5YRyjtACT2:nvGyVuemI5s643oUVGyzpsex'))}' : '' ;
    var url = Uri.parse('$baseUrl$endpoint');
    var headers =
    auth != null ? {'Content-Type': 'application/json','Authorization': basicAuth} : {'Content-Type': 'application/json'};
    var jsonBody = jsonEncode(body);
    var response = auth != null ? await http.post(url, headers: headers, body: jsonBody) : await http.post(url, body: jsonBody);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }
}

enum Authentication {
   basicAuth;
}