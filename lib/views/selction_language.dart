import 'package:flutter/material.dart';
import 'package:laguageapp/widgets/selction_card.dart';


class SelctionLanguage extends StatelessWidget {
  const SelctionLanguage({super.key});

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
