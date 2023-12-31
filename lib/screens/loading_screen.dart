import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../services/weather.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        weatherLocation: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    WeatherModel();
    return const Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.tealAccent,
          size: 200.0,
        ),
      ),
    );
  }
}
