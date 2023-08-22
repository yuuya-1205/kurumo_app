import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';

class PriceList extends StatelessWidget {
  const PriceList({required this.menuList,Key? key}) : super(key: key);
  final List<Menu> menuList;

  Widget priceItem(Menu menu) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
      title: Text(menu.title),
      subtitle: menu.description != null
          ? Text(
        menu.description!,
        style: const TextStyle(
          fontSize: 12,
        ),
      )
          : null,
      trailing: Text(
        '¥${menu.price}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menuList.length,
          itemBuilder: (BuildContext context, int index) {
            return priceItem(menuList[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 1,
              color: Themes.grayColor[200],
            );
          },
        ),
      ),
    );
  }
}



class Menu {
  Menu({
    required this.title,
    required this.price,
    this.description,
  });

  final String title;
  final String price;
  String? description;
}
