import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/colors_manager.dart';

class VerseItem extends StatelessWidget {
   VerseItem({super.key, required this.verse});
String verse;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 12 ,horizontal: 8),
        padding: EdgeInsets.symmetric(vertical: 12 ,horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorsManager.ofWhite
        ),
        child: Text(verse, textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ColorsManager.black),));
  }
}
