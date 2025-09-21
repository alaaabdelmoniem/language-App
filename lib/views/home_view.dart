import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/selction_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Language'),
        backgroundColor: Colors.grey,
      ),
      body: SelctionCard(),
    );
  }
}
