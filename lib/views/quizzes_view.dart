import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/custom_list_tile.dart';

class QuizzesView extends StatelessWidget {
  const QuizzesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, indx) {
          return GestureDetector(
            onTap: () {},
            child: CustomListTile(
              title: Text(
                'How to say Hello in spanish ?',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.indigo.shade400,
              leadingIcon: Icon(Icons.quiz, color: Colors.white),
              subTitle: Text(
                'Answer: Hola',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          );
        },
      ),
    );
  }
}
