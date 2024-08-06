

import 'package:flutter/material.dart';
import 'package:netflix/Movie_custom_card.dart';
import 'package:netflix/casting_page.dart';
import 'package:netflix/home_page.dart';
import 'package:netflix/movie_costom_widgite.dart';
import 'package:netflix/movies_page.dart';
import 'package:netflix/newhot_page.dart';
import 'package:netflix/profile_page.dart';

void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ProfilePage()
      // initialRoute:NavigationRouts.routhome,
      // routes:NavigationRouts.routeNavi
      );
  }
}