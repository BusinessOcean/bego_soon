import 'package:bego_soon/component/about_us_tile.dart';
import 'package:bego_soon/component/banner_tile.dart';
import 'package:bego_soon/component/center_heading.dart';
import 'package:bego_soon/component/feature_list_card.dart';
import 'package:bego_soon/component/header_nav.dart';
import 'package:bego_soon/component/section_content.dart';
import 'package:bego_soon/component/subscription_email.dart';
import 'package:bego_soon/styles/colors.dart';
import 'package:bego_soon/styles/responsive.dart';
import 'package:bego_soon/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Bego Coming Soon',
        theme: appTheme,
        themeMode: ThemeMode.light,
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: background,
        appBar: HeaderNav(),
        body: ListView(
          children: [
            const BannerTile().paddingXL,
            SectionContent(
              background: Colors.red.shade50,
              child: const FeatureListCard(),
            ),
            const CenterHeading(),
            SectionContent(
              background: Colors.blue.shade50,
              ltr: false,
              child: const FeatureListCard(),
            ),
            const CenterHeading(),
            SectionContent(
              background: Colors.green.shade50,
              child: const FeatureListCard(),
            ),
            const AboutUsTile().paddingXL,
            const SubscriptionEmail().paddingXL,
          ],
        ),
      );
}
