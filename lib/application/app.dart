import 'package:flutter/material.dart';
import 'package:sun_flare_clean_archi/presentation/home.dart';
import 'package:sun_flare_clean_archi/application/dependencies/home_module.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home(homeState: HomeModule.homeState()),
    );
  }
}
