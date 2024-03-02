import 'package:flutter/material.dart';

class MyHeaders extends StatelessWidget {
  const MyHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Shoes\nCollection',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30),
                ),
              ),
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
