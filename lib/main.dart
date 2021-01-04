import 'package:bloc_test/cubit/weather_cubit.dart';
import 'package:bloc_test/data/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:bloc_test/pages/weather_search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
          create: (context) => WeatherCubit(FakeWeatherRepository()),
          child: WeatherSearchPage()),
    );
  }
}
