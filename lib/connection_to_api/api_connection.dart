// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import '../model/model.dart';

Response? response;
Future<dynamic> getData({String? cityName = 'Tehran'}) async {
  String? url;
  String? apiKey;
  Model model = Model();
  apiKey = '8b8546b9f741c36f88bc1d2b627c2416';
  url =
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey';
  Dio dio = Dio();
  try {
    response = await dio.get(url, queryParameters: {'units': 'metric'});
    // و دریافت و ذخیره کردن جواب درخواست api درخواست زدن به 
    if (response!.statusCode == 200) {
        model.temp = response!.data['main']['temp'];
        model.description = response!.data['weather'][0]['description'];
        model.humidity = response!.data['main']['humidity'];
        model.speed = response!.data['wind']['speed'];
        model.feelsLike = response!.data['main']['feels_like'];
        model.icon = response!.data['weather'][0]['icon'];
        return model;
     } else if(response!.statusCode != 200){
        int? statuesCode = response!.statusCode;
        print(statuesCode);
        return statuesCode.toString();
     }
 } catch (e) {
     String? save = e.toString();
     print(save);
     return save;
 }
}
// wholeApi = https://api.openweathermap.org/data/2.5/weather?q=Tehran&appid=8b8546b9f741c36f88bc1d2b627c2416