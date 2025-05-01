import 'package:flutter/material.dart';
import 'package:rep_application/views/custom_button.dart';
import 'package:rep_application/views/customtextfield.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    txt: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  txt: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    txt: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  txt: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                txt: 'Add more details',
                backColor: Colors.white,
                txtcolor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomButton(txt: 'Send Money'),
            ),
          ],
        )
    ,  SizedBox(
          height: 20,
        ),],
    );
  }
}
