import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextKitView extends StatefulWidget {
  const TextKitView({Key? key}) : super(key: key);

  @override
  _TextKitViewState createState() => _TextKitViewState();
}

class _TextKitViewState extends State<TextKitView> {
  final String text = 'Flutter Sample';
  final TextStyle textStyle =  const TextStyle(
    fontSize:32,
    fontWeight: FontWeight.bold
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 600,
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                text,
                textStyle: textStyle.copyWith(
                  color: Colors.greenAccent
                ),
                speed: const Duration(milliseconds: 400),
              ),
            ],
            totalRepeatCount: 2,
            pause: const Duration(milliseconds: 500),
          ),
        ),
        const SizedBox(height: 30),
        Positioned(
          bottom: 400,
          child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
            RotateAnimatedText('Flutter',
            textStyle: textStyle.copyWith(
            color: Colors.red
          )
        ),
            RotateAnimatedText('Sample',
            textStyle: textStyle.copyWith(
              color: Colors.yellow.shade800
            )),

          ]),
        ),
        Positioned(
          bottom: 300,
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              WavyAnimatedText(text,
              textStyle: textStyle.copyWith(
                color: Colors.orange
              )),
              WavyAnimatedText('Followe Flutter Sample',
              textStyle: textStyle.copyWith(
                color: Colors.lightBlueAccent
              )),
            ],

          ),
        ),
        Positioned(
          bottom: 200,
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FlickerAnimatedText(text,
                textStyle: textStyle.
                copyWith(
                   color: Colors.pink
                )
              ),
            ],),
        )
      ],
    );
  }
}
