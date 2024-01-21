// ignore_for_file: unused_element

import 'package:bego_soon/styles/colors.dart';
import 'package:bego_soon/styles/theme.dart';
import 'package:flutter/material.dart';

class HeaderNav extends AppBar {
  HeaderNav({
    super.key,
    super.toolbarHeight = 80,
    super.title = const _NavBarTitle(),
    super.backgroundColor = background,
    super.leadingWidth = 0,
  });
}

class _NavBarTitle extends StatelessWidget {
  const _NavBarTitle({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 0,
            child: Text(
              'Business Ocean',
              textAlign: TextAlign.start,
              style: titleStyle,
            ),
          ),
          Spacer(),

          Icon(
            Icons.location_on,
            color: Colors.grey,
          ),
          Expanded(
            flex: 0,
            child: Text(
              'COMING SOON!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          // SizedBox(width: 14),
          // Icon(Icons.link),
        ],
      );
}
