import 'dart:convert';

import 'package:http/http.dart' as http;

Future getIpAddress() {
  var url = Uri.https('www.httpbin.org', '/ip');
  return http.get(url).then((response) {
    String ip = jsonDecode(response.body)['origin'];
    print(ip);
  });
}

void main() {
  getIpAddress()
      .then((ip) => print(ip))
      .catchError((error) => {print('失败===$error')});
}
