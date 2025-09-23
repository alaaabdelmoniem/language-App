import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/custom_botton.dart';
import 'package:laguageapp/widgets/custom_flash_card.dart';

class FlashcardView extends StatelessWidget {
  const FlashcardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, indx) {
                return Center(
                  child: FlipCard(
                    front: CustomFlashCard(
                      icon: Icon(
                        Icons.question_mark,
                        color: Colors.white,
                        size: 35,
                      ),
                      text: 'hello',
                    ),
                    back: CustomFlashCard(
                      icon: Icon(
                        Icons.question_mark,
                        color: Colors.white,
                        size: 35,
                      ),
                      text: 'hello',
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 28),
            child: Row(
              children: [
                CustomButton(
                  text: 'pervious',
                  color: Colors.blueGrey,
                  icon: Icon(Icons.arrow_back, color: Colors.grey.shade700),
                ),
                CustomButton(
                  text: 'Shuffle',
                  color: Colors.purple,
                  icon: Icon(Icons.shuffle, color: Colors.grey.shade700),
                ),
                CustomButton(
                  color: Colors.green,
                  text: 'Next',
                  icon: Icon(Icons.arrow_forward, color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
