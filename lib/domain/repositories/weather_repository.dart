import 'package:simple_weather/app/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherTemoteDataSource);
  final WeatherTemoteDataSource _weatherTemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await _weatherTemoteDataSource.getWeatherData(city: city);
    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
