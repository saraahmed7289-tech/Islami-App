import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app_abbas/core/sources/assets_manager.dart';
import 'package:quran_app_abbas/core/sources/colors_manager.dart';
import 'package:quran_app_abbas/features/sura_details/widget/werse_)item.dart';
import 'package:quran_app_abbas/models/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  late SuraModel sura;
  List<String> verses = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    loadSura(sura.suraIndex);
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(sura.suraNameEn)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageAssets.imgLeftCorner),
                Text(
                  sura.suraNameAr,
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Image.asset(ImageAssets.imgRightCorner),
              ],
            ),

            Expanded(
              child: verses.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.gold,
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) =>
                          VerseItem(verse: verses[index]),
                      itemCount: verses.length,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void loadSura(String index) async {
    String key = "assets/files/suras/${index}.txt";

    String fileContent = await rootBundle.loadString(key);



    List<String> suraLines = fileContent.trim().split('\n');
    for (int i = 0; i < suraLines.length; i++) {
      suraLines[i] += "[${i + 1}]";
    }
    verses = suraLines;
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {});
  }
}
