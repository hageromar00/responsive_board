import 'package:flutter/material.dart';
import 'package:rep_application/utils/style.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.txt, required this.hint});
  final String txt,hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          style: Style.styleMedium16.copyWith(
            color: Color(0xFF064061),
          ),
        ),
        CustomTextField(hint: hint)
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: Style.styleRegular16.copyWith(color: Color(0xFFAAAAAA)),
          filled: true,
          fillColor: Color(0xFFFAFAFA),
          enabledBorder: buildBorder(),
          border: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFFAFAFA)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
