import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rep_application/model/drawer_item.dart';
import 'package:rep_application/utils/style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.isActive});
  final ItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawer(model: model) : inActiveDrawer(model: model);
  }
}

class inActiveDrawer extends StatelessWidget {
  const inActiveDrawer({
    super.key,
    required this.model,
  });

  final ItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.title,
        style: Style.styleRegular16,
      ),
    );
  }
}

class ActiveDrawer extends StatelessWidget {
  const ActiveDrawer({
    super.key,
    required this.model,
  });

  final ItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.title,
        style: Style.styleBold16,
      ),
      trailing: Container(height: 48,width: 3.27,
      decoration:const BoxDecoration(color: Color(0xFF4EB7F2)),),
    );
  }
}
