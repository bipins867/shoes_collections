import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/store/app_data.dart';

class ShoeSize extends StatefulWidget {
  final sizeList;

  const ShoeSize({super.key, required this.sizeList});

  @override
  State<ShoeSize> createState() => _ShoeSizeState();
}

class _ShoeSizeState extends State<ShoeSize> {
  @override
  Widget build(BuildContext context) {
    final appData = Provider.of<AppData>(context);

    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: widget.sizeList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, items) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    appData.selectedProductSize = items;
                  });
                },
                child: Chip(
                  backgroundColor: appData.selectedProductSize == items
                      ? const Color.fromARGB(255, 255, 236, 180)
                      : const Color.fromARGB(255, 228, 228, 228),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide.none),
                  label: Text('${widget.sizeList[items]}'),
                ),
              ),
            );
          }),
    );
  }
}
