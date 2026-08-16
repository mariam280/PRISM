import 'package:flutter/material.dart';

class RadialGlow extends StatelessWidget {
  const RadialGlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
            alignment: const Alignment(0, -0.35),
            child: Opacity(
              opacity: 0.69,
              child: Container(
                width: 302,
                height: 302,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0x2E7C6CFF), // rgba(124,108,255,0.18)
                      Color(0x007C6CFF),
                    ],
                    stops: [0.0, 0.7],
                  ),
                ),
              ),
            ),
          );
  }
}