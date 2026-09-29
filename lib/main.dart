import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_routes.dart';
import 'package:space_assignment/screens/details/details_screen.dart';
import 'package:space_assignment/screens/home/home_screen.dart';
import 'package:space_assignment/screens/login/login_screen.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginRoute,
      routes: {
        AppRoutes.loginRoute : (context) => LoginScreen(),
        AppRoutes.homeRoute  : (context) => HomeScreen(),
        AppRoutes.detailsRoute  : (context) => DetailsScreen(),
      },
    );
  }

}