import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  final List<String> tasbehList = [
    "سبحان الله ",
    "الجمد لله",
    "الله أكبر",
  ];

  SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  double turns = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        width: mediaQuery.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SizedBox(height: mediaQuery.height * 0.01),
            Stack(clipBehavior: Clip.antiAlias, children: [
              const SizedBox(
                width: 300,
                height: 340,
              ),
              Positioned(
                left: 140,
                top: -5,
                child: Image.asset(
                  "assets/image/head_sebha.png",
                ),
              ),
              Positioned(
                  top: 30,
                  child: AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: GestureDetector(
                        onTap: () {
                          counter++;
                          turns += 1 / 4;

                          setState(() {});
                        },
                        child: Image.asset("assets/image/body _sebha.png")),
                  )),
            ]),
            Column(
              children: [
                Text(
                  "عدد التسبيحات ",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: theme.primaryColor.withOpacity(0.6),
                  ),
                  width: 80,
                  height: 90,
                  child: Center(
                    child: Text(
                      counter.toString(),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: theme.primaryColor.withOpacity(0.6),
                  ),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "سبحان الله ",
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}