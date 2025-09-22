import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({super.key});
  final List<Widget> screens = const [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily lessons')),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
          tabBackgroundColor: Colors.blue.shade400,
          activeColor: Colors.white,
          color: Colors.grey.shade600,
          padding: EdgeInsets.all(12),
          gap: 8,
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.menu_book, text: 'Vocabulary'),
            GButton(icon: Icons.auto_stories, text: 'Grammer'),
            GButton(icon: Icons.style, text: 'FlashCards'),
            GButton(icon: Icons.quiz, text: 'Quizzes'),
            GButton(icon: Icons.show_chart, text: 'Progress'),
          ],
        ),
      ),
    );
  }
}
