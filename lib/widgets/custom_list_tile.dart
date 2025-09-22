import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    super.key,
    this.leadingIcon,
    this.trallingIcon,
    required this.title,
    this.subTitle,
    required this.color,
  });
  Icon? leadingIcon;
  Icon? trallingIcon;
  final Widget? title;
  Widget? subTitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: ListTile(
        leading: leadingIcon,
        trailing: trallingIcon,
        title: title,
        subtitle: subTitle,
        tileColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
