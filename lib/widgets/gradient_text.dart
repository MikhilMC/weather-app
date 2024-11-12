import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;

  const GradientText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
      colors: [Colors.blue, Colors.red],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return gradient.createShader(bounds);
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
