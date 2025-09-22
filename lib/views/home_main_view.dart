import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:laguageapp/views/flashcard_view.dart';
import 'package:laguageapp/views/grammer_view.dart';
import 'package:laguageapp/views/home_view.dart';
import 'package:laguageapp/views/progress_view.dart';
import 'package:laguageapp/views/quizzes_view.dart';
import 'package:laguageapp/views/vocabulary_view.dart';

class HomeMainView extends StatefulWidget {
  const HomeMainView({super.key});

  @override
  State<HomeMainView> createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  final List<Widget> screens = const [
    HomeView(),
    VocabularyView(),
    GrammerView(),
    FlashcardView(),
    QuizzesView(),
    ProgressView(),
  ];
  int selctedIndex = 0;
  final List<String> appBarTitles = const [
    'Daily Lessons',
    'Vocabulary',
    'Grammer',
    'FlashCards',
    'Quizzes',
    'Progress',
  ];
  final List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[selctedIndex]),
        backgroundColor: colors[selctedIndex],
      ),
      body: screens[selctedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
          tabBackgroundColor: Colors.blue.shade400,
          activeColor: Colors.white,
          color: Colors.grey.shade600,
          padding: EdgeInsets.all(12),
          gap: 8,
          selectedIndex: selctedIndex,
          onTabChange: (indx) {
            selctedIndex = indx;
            setState(() {});
          },
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
