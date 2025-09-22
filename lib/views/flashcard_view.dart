import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/custom_flash_card.dart';

class FlashcardView extends StatelessWidget {
  const FlashcardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageView.builder(
            itemCount: 3,
            itemBuilder: (context, indx) {
              return Center(
                child: FlipCard(
                  front: CustomFlashCard(icon: Icon(Icons.question_mark, color: Colors.white, size: 35),text: 'hello',),
                  back: CustomFlashCard(icon: Icon(Icons.question_mark, color: Colors.white, size: 35),text: 'hello',),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

