import 'package:bego_soon/component/about_us_content.dart';
import 'package:bego_soon/component/banner_illustration.dart';
import 'package:flutter/material.dart';

class AboutUsTile extends StatelessWidget {
  const AboutUsTile({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 4,
            child: BannerIllustration(),
          ),
          Spacer(),
          Expanded(
            flex: 6,
            child: AboutUsContent(),
          ),
        ],
      );
}
