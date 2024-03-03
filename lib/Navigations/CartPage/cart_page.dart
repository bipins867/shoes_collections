import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_collections/Navigations/CartPage/cart_item.dart';
import 'package:shoes_collections/store/app_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var appData = Provider.of<AppData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: appData.cartList.isEmpty
          ? const Center(
              child: Text("Your cart is Empty!"),
            )
          : ListView.builder(
              itemCount: appData.cartList.length,
              itemBuilder: (context, item) {
                return CartItem(item: appData.cartList[item]);
              },
            ),
    );
  }
}
