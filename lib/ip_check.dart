import "dart:convert";

import "package:http/http.dart" as http;

import "models/ip.dart";

const stringUrl="https://ipapi.co/json";

Future<Ip> getIP() async {
  final url = Uri.parse(stringUrl);
  final res = await http.get(url);
  final Map<String, dynamic> data=json.decode(res.body);
  
  return Ip(ip:data['ip'], city:data['city'], region:data['region'], postal:data['postal']);
}