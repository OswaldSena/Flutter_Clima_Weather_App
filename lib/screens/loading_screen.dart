import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async{
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationweather: weatherData,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitDoubleBounce(
      color: Colors.white,
      size: 50.0,
    );
    return Scaffold(
      body: Center(
        child: spinkit,
      ),
    );
  }
}
