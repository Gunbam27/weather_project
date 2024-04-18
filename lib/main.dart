import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/data/data_source/hourly_api.dart';
import 'package:weather_app/data/repository/hourly_repository_impl.dart';
import 'package:weather_app/presentation/weather_main_screen.dart';
import 'package:weather_app/presentation/weather_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter o',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
          create: (_) => WeatherViewModel(
                hourlyRepository: HourlyRepositoryImpl(
                  dataSource: WeatherDataSource(),
                ),
              ),
          child: WeatherMainScreen()),
    );
  }
}
