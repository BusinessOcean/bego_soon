import 'package:bego_soon/styles/colors.dart';
import 'package:bego_soon/styles/theme.dart';
import 'package:flutter/material.dart';

class AboutUsContent extends StatelessWidget {
  const AboutUsContent({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black87, fontSize: 32),
              children: [
                TextSpan(
                  text: 'About Us\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Fake or ',
                  style: TextStyle(fontWeight: FontWeight.w400, height: 1.4),
                ),
                TextSpan(
                  text: 'Real',
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
          const SizedBox(height: 16),
          Text(
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: TextStyle(color: subtitleColor),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: buttonStyle,
            onPressed: () {},
            child: const Text('Know More'),
          ),
        ],
      );
}
