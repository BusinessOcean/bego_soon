import 'package:bego_soon/styles/colors.dart';
import 'package:flutter/material.dart';

class CenterHeading extends StatelessWidget {
  const CenterHeading({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: RichText(
          textAlign: TextAlign.center,
          // strutStyle: StrutStyle(),
          text: const TextSpan(
            style: TextStyle(color: Colors.black87, fontSize: 32),
            children: [
              TextSpan(
                text: 'What We Do\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'For Your ',
                style: TextStyle(fontWeight: FontWeight.w400, height: 1.4),
              ),
              TextSpan(
                text: 'Business',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  decorationColor: primary,
                  decorationThickness: 1,
                ),
              ),
            ],
          ),
        ),
      );
}
