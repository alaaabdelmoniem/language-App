import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/custom_botton.dart';
import 'package:laguageapp/widgets/custom_flash_card.dart';

class FlashcardView extends StatefulWidget {
  const FlashcardView({super.key});

  @override
  State<FlashcardView> createState() => _FlashcardViewState();
}

final List<Map<String, String>> flashcards = [
  {"front": "Apple", "back": "تفاحة"},
  {"front": "Car", "back": "سيارة"},
  {"front": "Book", "back": "كتاب"},
  {"front": "Hello", "back": "مرحبا"},
  {"front": "Goodbye", "back": "مع السلامة"},
];

class _FlashcardViewState extends State<FlashcardView> {
  int currentPage = 0;
  PageController controller = PageController();
  previousPage() {
    if (currentPage > 0) {
      controller.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  nextPage() {
    if (currentPage < flashcards.length) {
      controller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  shuffle() {
    setState(() {
      currentPage = 0;
      flashcards.shuffle(Random());
      controller.jumpTo(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                currentPage = value;
                print('current page: $currentPage');
                setState(() {});
              },
              controller: controller,
              itemCount: flashcards.length,
              itemBuilder: (context, indx) {
                return Center(
                  child: FlipCard(
                    front: CustomFlashCard(
                      color: Colors.deepOrange,
                      icon: Icon(
                        Icons.question_mark,
                        color: Colors.white,
                        size: 35,
                      ),
                      text: flashcards[indx]['front']!,
                    ),
                    back: CustomFlashCard(
                      color: Colors.green,
                      icon: Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 35,
                      ),
                      text: flashcards[indx]['back']!,
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
                  text: 'previous',
                  onTap: () {
                    previousPage();
                  },
                  color: Colors.blueGrey,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.grey.shade700,
                    size: 20,
                  ),
                ),
                CustomButton(
                  text: 'Shuffle',
                  onTap: () {
                    shuffle();
                  },
                  color: Colors.purple,
                  icon: Icon(
                    Icons.shuffle,
                    color: Colors.grey.shade700,
                    size: 20,
                  ),
                ),
                CustomButton(
                  onTap: () {
                    nextPage();
                  },
                  color: Colors.green,
                  text: 'Next',
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey.shade700,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
