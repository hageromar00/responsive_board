import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rep_application/utils/app_images.dart';
import 'package:rep_application/views/all_expence_quick_voice.dart';
import 'package:rep_application/views/custom_drawer.dart';

class DashboardLayoutDestop extends StatelessWidget {
  const DashboardLayoutDestop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 33,
        ),
        Expanded(
          flex: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AllExpenseAndQuickSection(),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   width: 33,
        // ),
        Expanded(child: MyCard())
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 210,
      child: Container(

        decoration: ShapeDecoration(color: Color(0xFF4EB7F2),
          image: DecorationImage(image: AssetImage(Assets.imagesMaskgroup)),
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(12),
            
          ),
        ),
      ),
    );
  }
}
