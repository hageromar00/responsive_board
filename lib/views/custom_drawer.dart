import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rep_application/model/drawer_item.dart';
import 'package:rep_application/utils/app_images.dart';
import 'package:rep_application/utils/style.dart';
import 'package:rep_application/views/drawer_item.dart';
import 'package:rep_application/views/list_darawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesFrame2,
                titl: 'Lekan Okeowo',
                subtitl: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          ListDrawer(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                inActiveDrawer(
                  model: ItemModel(
                      image: Assets.imagesSetting2, title: 'Setting system'),
                ),
                inActiveDrawer(
                  model: ItemModel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// UserInfoListTile(
//               image: Assets.imagesFrame2,
//               titl: 'Lekan Okeowo',
//               subtitl: 'demo@gmail.com'),
//           SizedBox(
//             height: 8,
//           ),
//        ListDrawer(),
//        Expanded(child: SizedBox()),
//        inActiveDrawer(model: ItemModel(image: Assets.imagesSetting2, title: 'Setting system'),),
//         inActiveDrawer(model: ItemModel(image: Assets.imagesLogout, title: 'Logout account'),),
//         SizedBox(height: 48,)
class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.titl,
      required this.subtitl});
  final String image, titl, subtitl;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          titl,
          style: Style.styleSemiBold16,
        ),
        subtitle: Text(subtitl, style: Style.styleRegular12),
      ),
    );
  }
}
