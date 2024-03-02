import 'package:flutter/material.dart';
import 'package:shoes_collections/Navigations/shoe_sizes.dart';

class ShoePage extends StatelessWidget {
  final product;
  const ShoePage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
                  child: const Text("Add to Cart"))
            ]),
          )
        ],
      ),
    );
  }
}
