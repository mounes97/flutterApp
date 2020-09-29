import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myfirstapp/Model/API.dart';
import 'package:myfirstapp/Model/SliderModel.dart';


class ApiService {
  static String url(int nrResults) {
    return 'http://api.randomuser.me/?results=$nrResults';
  }


  static Future<Map> getUsers(String myPage) async {
    try {
      var  url =  'https://bellacontactlenses.azurewebsites.net/api/$myPage';
      var header = {'Token':'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJDdXN0b21lcklkIjoxNjcxMSwiZXhwIjoxNjE0NTAxNjg1LjB9.3hSJa-U4Cddl8XFhlXZWGnWQdCKknuPrrtAPhy2mbh0',
        'NST': 'eyJhbGciOiJIUzUxMiJ9.eyJOU1RfS0VZIjoiYm05d1UzUmhkR2x2YmxSdmEyVnUifQ.adqiIzFjqZdpJw5uHOHjE5qw2UvCDH2FwMmwlYvr5ljKyPG65ZQe_4wb8NYEQFXmyZZyVu-77xd5Njn310cjMw',
        'Content-Type': 'application/json',
        'Accept': 'application/json'};
      var response =
      await http.get(url, headers: header);

      if(response.statusCode == 200){
        Map data = json.decode(response.body);


        return data;
      } else {
        print(response.body);
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}