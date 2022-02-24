import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextLiquid extends StatefulWidget {
  const TextLiquid({Key? key}) : super(key: key);

  @override
  _TextLiquidState createState() => _TextLiquidState();
}

class _TextLiquidState extends State<TextLiquid> {


  final String text = 'Flutter Sample';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        TextLiquidFill(

          text: 'Flutter Sample',
          loadDuration: const Duration(
              seconds: 13
          ),
          waveColor: Colors.yellow.shade800,
          boxBackgroundColor: Colors.black,
          boxWidth: double.infinity,
          textStyle: const TextStyle(
            fontSize: 70.0,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 150.0,
        ),





      ],
    );
  }


}
