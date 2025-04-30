import 'package:flutter/material.dart';
import 'package:rep_application/model/drawer_item.dart';
import 'package:rep_application/utils/app_images.dart';
import 'package:rep_application/views/drawer_item.dart';

class ListDrawer extends StatefulWidget {
  const ListDrawer({super.key});

  @override
  State<ListDrawer> createState() => _ListDrawerState();
}

class _ListDrawerState extends State<ListDrawer> {
  final List<ItemModel> item = const [
    ItemModel(image: Assets.imagesCategory2, title: 'Dashboard'),
    ItemModel(image: Assets.imagesConvertCard, title: 'My Transaction'),
    ItemModel(image: Assets.imagesGraph, title: 'Statistics'),
    ItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    ItemModel(image: Assets.imagesChart2, title: 'My Investments'),
  ];
  int indx = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: item.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (indx != index) {
              setState(() {
                indx = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: DrawerItem(
              model: item[index],
              isActive: indx == index,
            ),
          ),
        );
      },
    );
  }
}
