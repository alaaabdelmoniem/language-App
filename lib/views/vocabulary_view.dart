import 'package:flutter/material.dart';

class VocabularyView extends StatelessWidget {
  const VocabularyView({super.key});

  final vocab = const ["Apple = Manzana", "Car = Coche", "Book = Libro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomListTileVocab(),
          const CustomListTileVocab(),
          const CustomListTileVocab(),
          const CustomListTileVocab(),
        ],
      ),
    );
  }
}

class CustomListTileVocab extends StatelessWidget {
  const CustomListTileVocab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: ListTile(
        leading: Icon(Icons.book, color: Colors.white),
        trailing: Icon(Icons.volume_up, color: Colors.white),
        title: Text("Apple = Manzana", style: TextStyle(color: Colors.white)),
        tileColor: Colors.green.shade400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
