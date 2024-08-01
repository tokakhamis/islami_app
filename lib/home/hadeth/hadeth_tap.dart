import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/home/hadeth/item_hadeth_name.dart';

import '../../app_colors.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset("assets/image/hadith_logo.png")),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Text(
          "Hadeth Name",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Expanded(
          child: ahadethList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
                  ),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                      hadeth: ahadethList[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColors.primaryLightColor,
                      thickness: 1,
                    );
                  },
                  itemCount: ahadethList.length),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String hadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadthList = hadethContent.split("#\r\n");
    for (int i = 0; i < hadthList.length; i++) {
      print(hadthList[i]);
      List<String> hadethlines = hadthList[i].split("\n");
      String title = hadethlines[0];
      hadethlines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethlines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}