import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/store/app_data.dart';

class CartItem extends StatelessWidget {
  final item;
  const CartItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(item['imageUrl']),
      ),
      title: Text(
        '${item['title']}',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Size : ${item['size']}'),
      trailing: IconButton(
          onPressed: () {
            showDialog(
                // barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                      "Delete Product",
                      style: TextStyle(fontSize: 20),
                    ),
                    content: const Text(
                        "Are you sure you want to delete the item  from the cart?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "No",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Provider.of<AppData>(context, listen: false)
                              .removeProductsFromCart(item);
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    ],
                  );
                });
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          )),
    );
  }
}
