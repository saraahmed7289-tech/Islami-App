import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/assets_manager.dart';
import 'package:quran_app_abbas/core/sources/colors_manager.dart';
import 'package:quran_app_abbas/models/sura_model.dart';

class SuraDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SuraModel sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return Scaffold(
      appBar: AppBar(title: Text(sura.suraNameEn)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageAssets.imgLeftCorner),

                    Image.asset(ImageAssets.imgRightCorner),
                  ],
                ),
                Text(
                 sura.suraNameAr,
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),

          Image.asset(ImageAssets.imgBottomDecoration)
        ],
      ),
    );
  }
}
