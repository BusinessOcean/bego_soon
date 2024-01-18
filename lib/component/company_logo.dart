import 'package:bego_soon/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BusinessOceanLogo extends StatelessWidget {
  const BusinessOceanLogo({this.showDescription = true, super.key});

  final bool showDescription;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.svgs.businessOcean.svg(width: 120),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Business Ocean'.toUpperCase(),
                style: const TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (showDescription)
                const Text(
                  'Your Business Your Profit',
                  style: TextStyle(letterSpacing: 2),
                ),
            ],
          ),
        ],
      );
}
