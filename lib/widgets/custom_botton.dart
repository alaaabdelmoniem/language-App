import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    this.onTap,
  });

  final String text;
  final Icon icon;
  final Color color;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            Text(text, style: TextStyle(color: Colors.grey.shade800)),
          ],
        ),
      ),
    );
  }
}
