import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  final String text;
  final Function() onpressed;
  const MenuItems({Key? key, required this.text, required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: CustomText(text: text, size: 25),
      ),
    );
  }
}
