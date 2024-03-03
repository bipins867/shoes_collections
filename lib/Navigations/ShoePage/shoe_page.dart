import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/Navigations/ShoePage/shoe_sizes.dart';
import 'package:shoes_collections/store/app_data.dart';

class ShoePage extends StatelessWidget {
  final Map<String, dynamic> product;
  const ShoePage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var appData = Provider.of<AppData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            '${product['title']}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              product['imageUrl'] as String,
              height: 175,
            ),
          ),
          const Spacer(flex: 2),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Text(
                '\$${product['price']}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              ShoeSize(sizeList: product['sizes']),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor:
                          const Color.fromARGB(255, 183, 189, 188)),
                  onPressed: () {
                    if (appData.selectedProductSize != -1) {
                      var obj = {
                        'id': product['id'],
                        'title': product['title'],
                        'price': product['price'],
                        'imageUrl': product['imageUrl'],
                        'company': product['company'],
                        'size': product['sizes'][appData.selectedProductSize]
                      };
                      Provider.of<AppData>(context, listen: false)
                          .addProductsToCart(obj);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Product added to the Cart!"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please select size!"),
                        ),
                      );
                    }
                  },
                  child: const Text("Add to Cart"))
            ]),
          )
        ],
      ),
    );
  }
}
