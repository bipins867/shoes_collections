import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/Navigations/ShoePage/shoe_page.dart';

import 'package:shoes_collections/store/app_data.dart';

class NavigationLists extends StatelessWidget {
  const NavigationLists({super.key});

  @override
  Widget build(BuildContext context) {
    var appData = Provider.of<AppData>(context);

    return Expanded(
      child: ListView.builder(
        itemCount: appData.globalProducts.length,
        itemBuilder: (context, items) {
          final currentProduct = appData.globalProducts[items];

          return GestureDetector(
            onTap: () {
              appData.selectedProductSize = -1;
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShoePage(product: currentProduct);
              }));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                color: items % 2 == 0
                    ? const Color.fromRGBO(216, 240, 253, 1)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${currentProduct['title']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      '\$${currentProduct['price']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Center(
                      child: Image.asset(
                        currentProduct['imageUrl'] as String,
                        height: 175,
                      ),
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}
