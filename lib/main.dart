import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/routes_manager.dart';

void main(){
  runApp(Islami());
}
class Islami extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     routes: RoutesManager.routes ,
     initialRoute: RoutesManager.mainLayout,
   );
  }

}