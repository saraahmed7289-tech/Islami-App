import 'package:flutter/cupertino.dart';
import 'package:quran_app_abbas/features/main_layout/main_layout.dart';

abstract class RoutesManager{
static const String mainLayout = '/mainLayout';


  static Map<String, WidgetBuilder> routes ={
mainLayout : (context)=> MainLayout(),
  };
}