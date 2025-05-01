import 'package:flutter/material.dart';
import 'package:rep_application/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt,this.backColor,this.txtcolor});
  final String txt;
  final Color? backColor, txtcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor:backColor ?? Color(0xFF4EB7F2)),
          onPressed: () {},
          child: Text(
            txt,
            style: Style.styleSemiBold18.copyWith(color: txtcolor?? Colors.white),
          )),
    );
  }
}
