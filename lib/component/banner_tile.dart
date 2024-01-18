import 'package:bego_soon/component/banner_content.dart';
import 'package:bego_soon/component/banner_illustration.dart';
import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  const BannerTile({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 6,
            child: BannerContent(),
          ),
          Spacer(),
          Expanded(
            flex: 4,
            child: BannerIllustration(),
          ),
        ],
      );
}
