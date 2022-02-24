import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';



class MarqueeView extends StatefulWidget {
  const MarqueeView({Key? key}) : super(key: key);

  @override
  _MarqueeViewState createState() => _MarqueeViewState();
}

class _MarqueeViewState extends State<MarqueeView> {
  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: 'Follow Page Instagram @Flutter_Sample To see the tutorial Flutter.',
      style: const TextStyle(fontWeight: FontWeight.bold,
      fontSize: 25,

      color: Colors.blue),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20.0,
      velocity: 100.0,
      pauseAfterRound:  Duration.zero,

      accelerationDuration: const Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}
