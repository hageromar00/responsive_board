import 'package:flutter/material.dart';
import 'package:rep_application/model/expense_model.dart';
import 'package:rep_application/utils/app_images.dart';
import 'package:rep_application/views/all_expense_item.dart';

class AllExpenseIte3mList extends StatefulWidget {
  const AllExpenseIte3mList({super.key});

  @override
  State<AllExpenseIte3mList> createState() => _AllExpenseIte3mListState();
}

class _AllExpenseIte3mListState extends State<AllExpenseIte3mList> {
  final item = const [
    ExpenseModel(
        image: Assets.imagesMoneys,
        title: 'Balance',
        data: 'April 2022',
        price: r'$20,129'),
    ExpenseModel(
        image: Assets.imagesCardSend,
        title: 'Income',
        data: 'April 2022',
        price: r'$20,129'),
    ExpenseModel(
        image: Assets.imagesCardReceive,
        title: 'Expenses',
        data: 'April 2022',
        price: r'$20,129')
  ];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: item.asMap().entries.map((e) {
      int indx = e.key;
      var it = e.value;
      if (indx == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = indx;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpenseItem(
                model: it,
                isSelect: isSelected == indx,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = indx;
              });
            },
            child: AllExpenseItem(
              model: it,
              isSelect: isSelected == indx,
            ),
          ),
        );
        ;
      }
    }).toList());
    ///////////////
    // Row(
    //   children: item.map((e) => Expanded(child: AllExpenseItem(model: e))).toList(),
    // );
    ////////////////////
    //  ListView.builder(itemCount: item.length,
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (context,index){
    //   return  AllExpenseItem(model:item[index]);
    // });
  }
}
