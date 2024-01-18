import 'package:be_widgets/be_widgets.dart';
import 'package:bego_soon/component/company_logo.dart';
import 'package:bego_soon/styles/colors.dart';
import 'package:bego_soon/styles/theme.dart';
import 'package:flutter/material.dart';

class SubscriptionEmail extends StatelessWidget {
  const SubscriptionEmail({super.key});

  @override
  Widget build(BuildContext context) {
    const br = BorderRadius.only(topRight: Radius.circular(200));
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 32,
          top: 32,
          bottom: 32,
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: background,
            borderRadius: br,
          ),
          child: const Row(
            children: [
              Expanded(flex: 4, child: SubscriptionContent()),
              Spacer(),
              Expanded(
                flex: 0,
                child: BusinessOceanLogo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscriptionContent extends StatelessWidget {
  const SubscriptionContent({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bego',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline,
              decorationColor: primary,
              fontSize: 32,
              decorationThickness: 1,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Lorem Ipsum has been the industry`s standard dummy text ever '
            'since the 1500s, when an unknown printer took a galley of type '
            'and scrambled it to make a type specimen book. It has survived '
            'not only five centuries.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: subtitleColor,
            ),
          ),
          const SizedBox(height: 32),
          BeLabel(
            innerLabel: true,
            offset: const Offset(-4, 0),
            position: BeLabelPosition.rightCenter,
            label: ElevatedButton(
              onPressed: () {},
              style: buttonStyle,
              child: const Text('I am waiting'),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
        ],
      );
}
