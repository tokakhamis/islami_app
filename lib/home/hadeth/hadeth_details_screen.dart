import 'package:flutter/material.dart';
import 'package:islami_project/app_colors.dart';
import 'package:islami_project/home/hadeth/hadeth_tap.dart';
import 'package:islami_project/home/hadeth/item_hadeth_details_screen.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routName = "Hadeth_details";

  @override
  State<HadethDetailsScreen> createState() => HadethDetailsScreenState();
}

class HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset("assets/image/main_background.png"),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.06),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(24)),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetailsScreen(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}
