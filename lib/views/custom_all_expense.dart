
import 'package:flutter/material.dart';

class CustomAllExpense extends StatelessWidget {
  const CustomAllExpense({super.key,required this.chils});
  final Widget chils;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),child: chils,);
  }
}
