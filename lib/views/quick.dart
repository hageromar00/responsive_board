import 'package:flutter/material.dart';
import 'package:rep_application/model/user_info_model.dart';
import 'package:rep_application/utils/app_images.dart';
import 'package:rep_application/utils/style.dart';
import 'package:rep_application/views/custom_all_expense.dart';
import 'package:rep_application/views/custom_drawer.dart';
import 'package:rep_application/views/customtextfield.dart';
import 'package:rep_application/views/header_quick.dart';
import 'package:rep_application/views/text_field_form.dart';

class QuickInVoice extends StatelessWidget {
  const QuickInVoice({super.key});
  @override
  Widget build(BuildContext context) {
    return const  CustomAllExpense(
        chils: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: HeaderQuick(txt: 'Quick Invoice'),
        ),
        LatestTrans(),
        Divider(
                  height: 20,
                  color: Color(0xFFF1F1F1),
                ),
                TextFieldForm()
                
      ],
    ));
  }
}

class LatestTrans extends StatelessWidget {
  const LatestTrans({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Style.styleMedium16.copyWith(color: const Color(0xFF064061)),
        ),
        const SizedBox(
          height: 10,
        ),
        const LatesetTranSection()
      ],
    );
  }
}

class LatesetTranSection extends StatelessWidget {
  const LatesetTranSection({super.key});
  static const item = [
    UserInfoModel(
        image: Assets.imagesFrame2,
        title: 'Madrani Andi',
        subtitl: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andni',
        subtitl: 'Madrania20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame2,
        title: 'Madrani Andi',
        subtitl: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) => IntrinsicWidth(child: UserInfoListTile(model: e)))
            .toList(),
      ),
    );

    // SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: item.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(child: UserInfoListTile(model: item[index]));
    //       }),
    // );
  }
}
