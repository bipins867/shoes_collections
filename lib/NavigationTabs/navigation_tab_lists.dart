import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/store/app_data.dart';

class NavigationTabList extends StatefulWidget {
  final List<String> navList;
  const NavigationTabList({super.key, required this.navList});

  @override
  State<NavigationTabList> createState() => _NavigationTabListState();
}

class _NavigationTabListState extends State<NavigationTabList> {
  @override
  Widget build(BuildContext context) {
    var appData = Provider.of<AppData>(context);

    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: widget.navList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, items) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  appData.selectedTab = items;
                });
              },
              child: Chip(
                label: Text(widget.navList[items]),
                padding: const EdgeInsets.all(10),
                backgroundColor: appData.selectedTab == items
                    ? const Color.fromARGB(255, 255, 236, 180)
                    : const Color.fromARGB(255, 228, 228, 228),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide.none),
              ),
            ),
          );
        },
      ),
    );
  }
}
