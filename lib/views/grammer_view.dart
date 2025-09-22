import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/custom_list_tile.dart';

class GrammerView extends StatelessWidget {
  const GrammerView({super.key});
  final grammarLessons = const ["Present Tense", "Past Tense", "Future Tense"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomListTile(
            title: Text(
              grammarLessons[0],
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.purple,
            leadingIcon: Icon(Icons.auto_stories, color: Colors.white),
            subTitle: Text(
              'Click to view details',
              style: TextStyle(color: Colors.white),
            ),
          ),
          CustomListTile(
            title: Text(
              grammarLessons[0],
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.purple,
            leadingIcon: Icon(Icons.auto_stories, color: Colors.white),
            subTitle: Text(
              'Click to view details',
              style: TextStyle(color: Colors.white),
            ),
          ),
          CustomListTile(
            title: Text(
              grammarLessons[0],
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.purple,
            leadingIcon: Icon(Icons.auto_stories, color: Colors.white),
            subTitle: Text(
              'Click to view details',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
