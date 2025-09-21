
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class SelctionCard extends StatelessWidget {
  SelctionCard({super.key});
  final List<String> languages = const [
    'Spanish',
    'French',
    'Germany',
    'japanese',
  ];
  final List<Widget> icons = [
    CountryFlag.fromCountryCode('ES'),
    CountryFlag.fromCountryCode('FR'),
    CountryFlag.fromCountryCode('DE'),
    CountryFlag.fromCountryCode('JP'),
  ];
  final List<Color> colors = [
    Colors.red.shade600,
    Colors.blue.shade400,
    Colors.green.shade400,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 10,
              color: colors[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  icons[index],
                  SizedBox(height: 12),
                  Text(
                    languages[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
