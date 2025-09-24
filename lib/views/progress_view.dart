import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.show_chart, color: Colors.teal, size: 45),
            const SizedBox(height: 20),
            CircularPercentIndicator(
              radius: 120,
              lineWidth: 12,
              percent: .75,
              center: const Text(
                '75%',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              progressColor: Colors.teal,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
