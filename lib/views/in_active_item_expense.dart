import 'package:flutter/material.dart';
import 'package:rep_application/model/expense_model.dart';
import 'package:rep_application/utils/style.dart';
import 'package:rep_application/views/all_expense_item.dart';

class InActiveItemExpense extends StatelessWidget {
  const InActiveItemExpense({super.key, required this.model});
  final ExpenseModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderExItem(
             backcolor: Color.fromARGB(255, 241, 238, 238),
            image: model.image,
          ),
        const  SizedBox(height: 20,),
          Text(model.title,style: Style.styleSemiBold16,),
        const  SizedBox(height: 8,),
          Text(model.data,style: Style.styleRegular14,),
        const  SizedBox(height: 10,),
          Text(model.price,style: Style.styleSemiBold24,)
        ],
      ),
    );
  }
}

class ActiveItemExpense extends StatelessWidget {
  const ActiveItemExpense({super.key, required this.model});
  final ExpenseModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
             color: Color(0xFF98DAFF),
          
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderExItem(
            backcolor: Color(0xFF98DAFF),
            imagecolor: Colors.white,
            image: model.image,
          ),
        const  SizedBox(height: 20,),
          Text(model.title,style: Style.styleSemiBold16.copyWith(color: Colors.white),),
        const  SizedBox(height: 8,),
          Text(model.data,style: Style.styleRegular14.copyWith(color: Color(0xFFFAFAFA)),),
        const  SizedBox(height: 10,),
          Text(model.price,style: Style.styleSemiBold24.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}