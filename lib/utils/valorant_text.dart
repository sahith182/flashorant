import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedValoText extends StatefulWidget {
  const AnimatedValoText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  _AnimatedValoTextState createState() => _AnimatedValoTextState();
}

class _AnimatedValoTextState extends State<AnimatedValoText> {
  TextStyle valoTextStyle = const TextStyle(
      fontSize: 40, fontFamily: "Valorant", color: Color(0xffFF4654));
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          widget.text,
          textStyle: valoTextStyle,
          speed: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
        )
      ],
      isRepeatingAnimation: false,
    );
  }
}
