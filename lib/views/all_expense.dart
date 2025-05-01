import 'package:flutter/material.dart';
import 'package:rep_application/model/expense_model.dart';
import 'package:rep_application/utils/app_images.dart';
import 'package:rep_application/utils/style.dart';
import 'package:rep_application/views/all_expense-iitem_list.dart';
import 'package:rep_application/views/all_expense_item.dart';
import 'package:rep_application/views/custom_all_expense.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAllExpense(
        chils:  Column(children: [
       HeaderExpense(txt: 'All Expenses',),
      SizedBox(
        height: 8,
      ),
      AllExpenseIte3mList()
    ]));
    //////////////////////////////////////////
    ///
    //  Container(
    //   padding: EdgeInsets.all(20),
    //   decoration: ShapeDecoration(
    //     color: Colors.white,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //   ),
    //   child: const Column(
    //     children: [
    //       const HeaderExpense(),
    //       const SizedBox(
    //         height: 16,
    //       ),
    //       AllExpenseIte3mList()
    //       // AllExpenseItem(
    //       //     model: ExpenseModel(
    //       //         image: Assets.imagesCardSend,
    //       //         title: 'Income',
    //       //         data: 'April 2022',
    //       //         price: r'$20,129'))
    //     ],
    //   ),
    // );
  }
}

class HeaderExpense extends StatelessWidget {
  const HeaderExpense({super.key,required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          txt,
          style: Style.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        // Spacer(),
        Monthcustom(),
      ],
    );
  }
}

class Monthcustom extends StatelessWidget {
  const Monthcustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: Style.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}
