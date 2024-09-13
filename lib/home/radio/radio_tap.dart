import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/image/body_radio.png"),
        const SizedBox(
          height: 50,
        ),
        Text(
          "إذاعة القرآن الكريم ",
          style: theme.textTheme.bodyLarge!.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(
                  Icons.skip_previous,
                  color: theme.primaryColor,
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.play_arrow,
                  color: theme.primaryColor,
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.skip_next,
                  color: theme.primaryColor,
                  size: 50,
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
