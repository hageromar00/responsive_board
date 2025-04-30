import 'package:flutter/material.dart';
import 'package:rep_application/views/adaptive_layout.dart';
import 'package:rep_application/views/custom_drawer.dart';
import 'package:rep_application/views/dashboard_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      drawer: DashboardLayoutDestop(),
      body: AdaptiveUi(
          mobile: (context) => SizedBox(),
          tablet: (context) => SizedBox(),
          desktop: (context) => DashboardLayoutDestop()),
    );
  }
}
