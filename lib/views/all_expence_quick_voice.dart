import 'package:flutter/material.dart';
import 'package:rep_application/views/all_expense.dart';
import 'package:rep_application/views/quick.dart';

class AllExpenseAndQuickSection extends StatelessWidget {
  const AllExpenseAndQuickSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        AllExpense(),
        SizedBox(
          height: 24,
        ),
        QuickInVoice(),
      ],
    );
  }
}
