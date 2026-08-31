import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/extensions/context_ex.dart';
import 'package:quran_app_abbas/core/sources/assets_manager.dart';
import 'package:quran_app_abbas/core/sources/colors_manager.dart';
import 'package:quran_app_abbas/features/main_layout/tabs/quran/widgets/most_recent_item.dart';
import 'package:quran_app_abbas/features/main_layout/tabs/quran/widgets/sura_item.dart';
import 'package:quran_app_abbas/models/sura_model.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<SuraModel> filteredList = SuraModel.suras;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(ImageAssets.quranTabBg)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(ImageAssets.islamiLogo),
            SizedBox(height: context.getHeight * 0.02),
            TextField(
              onChanged: (input){
                showFilteredList(input);
              },
              cursorColor: ColorsManager.ofWhite,
              style: TextStyle(color: ColorsManager.ofWhite, fontSize: 18),
              decoration: InputDecoration(
                labelText: "Sura name",
                prefixIcon: ImageIcon(AssetImage(IconAssets.quran)),
              ),
            ),
            SizedBox(height: context.getHeight * 0.02),
            Text("Most Recently", style: Theme.of(context).textTheme.titleSmall),
            SizedBox(height: 10),
            SizedBox(
              height: context.getHeight * 0.17,

              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 5),
                itemBuilder: (context, index) => MostRecentItem(),
                itemCount: 10,
              ),
            ),
         ListView.separated(
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
             itemBuilder: (context, index)=>SuraItem(
              sura: filteredList[index],
             ),
             separatorBuilder: (context, index)=>Container(
               margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
               width: double.infinity,
               height: 2,
               color: ColorsManager.ofWhite,
             ),
             itemCount:filteredList.length
              )

          ],
        ),
      ),
    );
  }

  void showFilteredList(String input) {
    if(input.isEmpty){

      filteredList = SuraModel.suras;
    }else{
      filteredList = SuraModel.suras.where((sura)=> sura.suraNameEn.toLowerCase().contains(input.toLowerCase()) || sura.suraNameAr.contains(input)).toList();
    }

    setState(() {

    });
  }
}
