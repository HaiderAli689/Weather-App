
class Weather{

  final String cityName;
  final String temperature;
  final String mainCondidtion;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondidtion,
  });

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
        cityName: json['name'],
        temperature: json['main']['temp'].toDouble(),
        mainCondidtion: json['weather'][0]['main'],
    );
  }
}