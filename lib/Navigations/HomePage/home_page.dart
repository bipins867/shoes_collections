import 'package:flutter/material.dart';
import 'package:shoes_collections/Header/header.dart';
import 'package:shoes_collections/NavigationLists/navigation_lists.dart';
import 'package:shoes_collections/NavigationTabs/navigation_tab_lists.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          MyHeaders(),
          NavigationTabList(),
          NavigationLists(),
        ],
      ),
    );
  }
}
