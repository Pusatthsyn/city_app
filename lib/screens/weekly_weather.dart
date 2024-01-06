import 'dart:convert';
import 'package:city_app/weather_pages/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeeklyWeatherScreen extends StatefulWidget {
  const WeeklyWeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeeklyWeatherScreen> createState() => _WeeklyWeatherScreenState();
}

class _WeeklyWeatherScreenState extends State<WeeklyWeatherScreen> {
  Future<List<Weather>> fetchWeeklyWeather() async {
    final resp = await http.get(Uri.parse(
        'https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=ankara'));

    if (resp.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(resp.body);

      final List<dynamic> list = json['list'];
      List<Weather> weeklyWeather =
          list.map((item) => Weather.fromJson(item)).toList();

      return weeklyWeather;
    } else {
      throw Exception('Veriler yüklenemedi...');
    }
  }

  late Future<List<Weather>> weeklyWeather;

  @override
  void initState() {
    super.initState();
    weeklyWeather = fetchWeeklyWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haftalık Hava Durumu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FutureBuilder<List<Weather>>(
          future: weeklyWeather,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Weather weather = snapshot.data![index];
                  return ListTile(
                    title: Text(weather.name),
                    subtitle: Text(
                        '${weather.main['temp']}°C, ${weather.weather[0]['description']}'),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Text(
                'Veriler yüklenemedi..',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              );
            } else {
              return const CircularProgressIndicator(
                color: Colors.white,
              );
            }
          },
        ),
      ),
    );
  }
}
