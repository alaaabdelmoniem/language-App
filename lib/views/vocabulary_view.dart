import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/custom_list_tile.dart';

class VocabularyView extends StatelessWidget {
  const VocabularyView({super.key});

  final vocab = const ["Apple = Manzana", "Car = Coche", "Book = Libro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomListTile(
            color: Colors.green.shade400,
            title: Text(
              "Apple = Manzana",
              style: TextStyle(color: Colors.white),
            ),
            trallingIcon: Icon(Icons.volume_up, color: Colors.white),
            leadingIcon: Icon(Icons.book, color: Colors.white),
          ),
          CustomListTile(
            color: Colors.green.shade400,
            title: Text(
              "Apple = Manzana",
              style: TextStyle(color: Colors.white),
            ),
            trallingIcon: Icon(Icons.volume_up, color: Colors.white),
            leadingIcon: Icon(Icons.book, color: Colors.white),
          ),
          CustomListTile(
            color: Colors.green.shade400,
            title: Text(
              "Apple = Manzana",
              style: TextStyle(color: Colors.white),
            ),
            trallingIcon: Icon(Icons.volume_up, color: Colors.white),
            leadingIcon: Icon(Icons.book, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
