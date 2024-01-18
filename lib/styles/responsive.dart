import 'package:flutter/material.dart';

const contentPadding = EdgeInsets.symmetric(horizontal: 32, vertical: 32);

extension ResponsivePadding on Widget {
  Widget get paddingXL => Padding(
        padding: contentPadding,
        child: this,
      );
}
