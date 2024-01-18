import 'package:flutter/material.dart';

class FeatureListCard extends StatelessWidget {
  const FeatureListCard({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          constraints: const BoxConstraints.tightForFinite(width: 320),
          child: const CardTileFeature(),
        ),
      );
}

class CardTileFeature extends StatelessWidget {
  const CardTileFeature({super.key});

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(16),
        surfaceTintColor: Colors.white,
        color: Colors.white,
        elevation: 4,
        shadowColor: Colors.grey.shade100,
        borderOnForeground: false,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.red.shade50,
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.laptop),
              ),
              const Spacer(),
              const Text(
                'Web Page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1.2,
                ),
              ),
              const Spacer(),
              const Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                maxLines: 4,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      );
}
