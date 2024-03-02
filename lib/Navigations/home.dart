import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/Header/header.dart';
import 'package:shoes_collections/NavigationLists/navigation_lists.dart';
import 'package:shoes_collections/NavigationTabs/navigation_tab_lists.dart';
import 'package:shoes_collections/store/app_data.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    var appData = Provider.of<AppData>(context);
    var navList = appData.navList;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MyHeaders(),
            NavigationTabList(navList: navList),
            const NavigationLists(),
          ],
        ),
      ),
    );
  }
}
