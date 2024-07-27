import 'package:flutter/material.dart';
import 'package:islami_project/home/app_colors.dart';
import 'package:islami_project/home/hadeth/hadeth_tap.dart';
import 'package:islami_project/home/quran/quran_tap.dart';
import 'package:islami_project/home/radio/radio_tap.dart';
import 'package:islami_project/home/sebha/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "Home_Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/image/main_background.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              selectedItemColor: AppColors.blackColor,
              unselectedItemColor: AppColors.whiteColor,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/quran.png")),
                    label: "Quran"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/hadeth.png")),
                    label: "Hadeth"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/sebha.png")),
                    label: "Sebha"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/radio.png")),
                    label: "Radio")
              ],
            ),
          ),
          body: taps[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> taps = [QuranTap(), HadethTap(), SebhaTap(), RadioTap()];
}
