import 'package:colors_app_2/app_colors.dart';
import 'package:flutter/material.dart';

class CreatColorBar extends StatelessWidget {
  
  const CreatColorBar({
    super.key, 
    this.chosenColor});

  // ignore: prefer_typing_uninitialized_variables
  final chosenColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: chosenColor,
        child: GestureDetector(
          onTap: () {
            AppColors.playSound(chosenColor);
          },
        ),
      )
    );
  }
}
