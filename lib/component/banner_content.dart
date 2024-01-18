import 'package:bego_soon/styles/colors.dart';
import 'package:bego_soon/styles/theme.dart';
import 'package:flutter/material.dart';

class BannerContent extends StatelessWidget {
  const BannerContent({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black87, fontSize: 56),
              children: [
                TextSpan(
                  text: 'We Help you\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'to grow your\n',
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
          const SizedBox(height: 16),
          const Text(
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
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
