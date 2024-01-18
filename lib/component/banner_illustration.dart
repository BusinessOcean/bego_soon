import 'package:bego_soon/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BannerIllustration extends StatelessWidget {
  const BannerIllustration({super.key});

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1,
        child: Stack(
          // fit: StackFit.passthrough,
          alignment: Alignment.center,
          children: [
            Assets.svgs.yellowBlob.svg(),
            Assets.svgs.dotedRing.svg(),
            Assets.images.pplImage.image(),
          ],
        ),
      );
}
