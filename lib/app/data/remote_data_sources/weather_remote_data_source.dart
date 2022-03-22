import 'package:dio/dio.dart';

class WeatherTemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=05202540a4fd484a83f195807222003&q=$city&aqi=no');
    return response.data;
  }
}
