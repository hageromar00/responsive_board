import 'package:flutter/material.dart';
import 'package:rep_application/views/all_expense.dart';
import 'package:rep_application/views/custom_drawer.dart';

class DashboardLayoutDestop extends StatelessWidget {
  const DashboardLayoutDestop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 33,),
        Expanded(child: Column(children: [AllExpense()],))

      ],
    );
  }
}
