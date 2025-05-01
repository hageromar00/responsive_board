import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rep_application/model/expense_model.dart';
import 'package:rep_application/views/in_active_item_expense.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem(
      {super.key, required this.model, required this.isSelect});
  final ExpenseModel model;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return isSelect
        ? ActiveItemExpense(model: model)
        : InActiveItemExpense(model: model);
  }
}

class HeaderExItem extends StatelessWidget {
  const HeaderExItem(
      {super.key, required this.image, this.imagecolor, this.backcolor});
  final String image;
  final Color? imagecolor, backcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              shape: const OvalBorder(), color: backcolor ?? Color(0xFFF1F1F1)
              // color: Color.fromARGB(255, 241, 238, 238),
              ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imagecolor ??
                      // Colors.amber
                      Color(0xFF4EB7F2),
                  BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: imagecolor == null ? Color(0xFF064061) : Colors.white,
            ))
      ],
    );
  }
}
