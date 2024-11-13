import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final LinearGradient linearGradient;
  final TextStyle textStyle;

  const GradientText({
    super.key,
    required this.text,
    required this.linearGradient,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final gradient = linearGradient;

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return gradient.createShader(bounds);
      },
      child: Text(text, style: textStyle),
    );
  }
}
