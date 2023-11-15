import 'package:dio/dio.dart';


import 'package:seneca/infrastructures/models/user.dart';



class GetUser {
  final _dio = Dio();

  Future <List<Usuario>> getUser() async
  {
    final response = await _dio.get('https://script.google.com/macros/s/AKfycbz4mnrr4qJsdL2kpY6j0fit5VdHcRFrRLmnoi0yMtoeYUpjfk17WTsqOoqrPWI5MtOA/exec?spreadsheetId=137PQ-BgAW2uczyf4P4AzPPvRWHChqNsNHUY38dSy48E&sheet=usuario');
  
    return userFromJson(response.data);
  }
}