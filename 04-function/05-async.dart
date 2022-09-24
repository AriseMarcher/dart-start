import 'dart:convert';

import 'package:http/http.dart' as http;

Future getIpAddress() async {
  var url = Uri.https('www.httpbin.org', '/ip');
  final response = await http.get(url);
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main() async {
  // 调用 getIpAddress
  try {
    final ip = await getIpAddress();
    print(ip);
  } catch (error) {
    print(error);
  }
}
