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
            Provider.of<AppData>(context, listen: false)
                .removeProductsFromCart(item);
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          )),
    );
  }
}
