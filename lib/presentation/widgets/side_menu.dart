import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_running_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
            child: Text('Running'),
          ),
          ...appMenuItems.map(
            (item) => item.subItems != null && item.subItems!.isNotEmpty
                ? ExpansionTile(
                    leading: Icon(item.icon),
                    title: Text(item.title),
                    subtitle: Text(item.subTitle),
                    children: item.subItems!.map((subItem) {
                      return ListTile(
                        leading: Icon(subItem.icon),
                        title: Text(subItem.title),
                        subtitle: Text(subItem.subTitle),
                        onTap: () {
                          context.push(subItem.link);
                          widget.scaffoldKey.currentState?.closeDrawer();
                        },
                      );
                    }).toList(),
                  )
                : ListTile(
                    leading: Icon(item.icon),
                    title: Text(item.title),
                    subtitle: Text(item.subTitle),
                    onTap: () {
                      context.push(item.link);
                      widget.scaffoldKey.currentState?.closeDrawer();
                    },
                  ),
          ),
        ],
      ),
    );
  }
}