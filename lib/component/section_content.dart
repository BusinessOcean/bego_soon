import 'package:flutter/material.dart';

class SectionContent extends StatelessWidget {
  const SectionContent({
    super.key,
    required this.background,
    required this.child,
    this.ltr = true,
  });
  final Color background;
  final bool ltr;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final br = ltr
        ? const BorderRadius.only(topRight: Radius.circular(200))
        : const BorderRadius.only(topLeft: Radius.circular(200));
    return Padding(
      padding: EdgeInsets.only(
        right: ltr ? 32 : 0,
        left: ltr ? 0 : 32,
        top: 32,
        bottom: 32,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 220,
        decoration: BoxDecoration(
          color: background,
          borderRadius: br,
        ),
        child: child,
      ),
    );
  }
}
