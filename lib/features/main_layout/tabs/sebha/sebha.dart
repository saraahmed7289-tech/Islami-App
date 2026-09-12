import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/assets_manager.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;
  int dhikrIndex = 0;
  double turns = 0;

  final List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];

  void tasbeeh() {
    setState(() {
      counter++;
      turns += 0.03;

      if (counter == 33) {
        counter = 0;
        dhikrIndex++;

        if (dhikrIndex == azkar.length) {
          dhikrIndex = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageAssets.sebhaTabBg,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: 0.65),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),

            Image.asset(
              ImageAssets.islamiLogo,
            ),

            const SizedBox(height: 20),

            const Text(
              "سَبِّحِ اسْمَ رَبِّكَ الْأَعْلَى",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.headsebha,
                  ),

                  Transform.translate(
                    offset: const Offset(0, -6),
                    child: GestureDetector(
                      onTap: tasbeeh,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedRotation(
                            turns: turns,
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                            child: Image.asset(
                              ImageAssets.SebhaBody,
                            ),
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                azkar[dhikrIndex],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 10),

                              Text(
                                "$counter",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}