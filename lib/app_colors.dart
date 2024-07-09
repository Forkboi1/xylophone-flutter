import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'creat_color_bar.dart';

class AppColors extends StatelessWidget {

  
  AppColors({
    super.key,
  });

  static const _colorTypes = [Colors.red, Colors.orange, Colors.amberAccent, Colors.green, Colors.lightGreen, Colors.lightBlue, Colors.purple];
  final FocusNode _focusNode = FocusNode();

  static void playSound(Color containerColor) {

    final player = AudioPlayer();

    String notePath = "";
    switch (containerColor) {
      case Colors.red: notePath = "note1.wav";
      case Colors.orange: notePath = "note2.wav";
      case Colors.amberAccent: notePath = "note3.wav";
      case Colors.green: notePath = "note4.wav";
      case Colors.lightGreen: notePath = "note5.wav";
      case Colors.lightBlue: notePath = "note6.wav";
      case Colors.purple: notePath = "note7.wav";

      default:
    }

    if (notePath.isNotEmpty) {
          player.play(AssetSource(notePath));
    }
  }

  void _handleKeyEvent(KeyEvent event) {
    if (event is KeyDownEvent) {
      // Handle key down events
      print('Key pressed: ${event.logicalKey}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: _handleKeyEvent,
      child: Column(
        children: [
          for (var c in _colorTypes) CreatColorBar(chosenColor: c,)
        ],
      ),
    );
  }
}
