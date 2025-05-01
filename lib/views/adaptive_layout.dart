import 'package:flutter/material.dart';

class AdaptiveUi extends StatelessWidget {
  const AdaptiveUi({super.key, required this.mobile, required this.tablet, required this.desktop});
  final WidgetBuilder mobile, tablet, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
     // print('layout : ${constraints.maxWidth}');
      if (constraints.maxWidth <= 500) {
        return mobile(context);
      } else if (constraints.maxWidth <= 800) {
        return tablet(context);
      } else {
        return desktop(context);
      }
    });
  }
}
