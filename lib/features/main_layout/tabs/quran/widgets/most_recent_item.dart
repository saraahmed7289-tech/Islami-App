import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/assets_manager.dart';
import 'package:quran_app_abbas/core/sources/colors_manager.dart';

class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Al-Fatiha", style: Theme.of(context).textTheme.labelLarge,),
              Text("الفاتحه",style: Theme.of(context).textTheme.labelLarge,),
              Text("7 verses",style: Theme.of(context).textTheme.labelSmall,),
            ],
          ),
          Image.asset(ImageAssets.mostRecentCardImage)
        ],
      ),
    );
  }
}
