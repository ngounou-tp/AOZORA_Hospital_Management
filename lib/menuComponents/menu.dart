import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/page.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MenuItems(
          text: "Aujourhui",
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()),
            );
          },
        ),
        MenuItems(
          text: "Cette Semaine",
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()),
            );
          },
        ),
        MenuItems(
          text: "Ce mois",
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()),
            );
          },
        ),
        MenuItems(
          text: "Jusqu'a maintenant",
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()),
            );
          },
        ),
      ],
    );
  }
}

class MenuItems extends StatelessWidget {
  final String text;
  final Function() onpressed;
  const MenuItems({Key? key, required this.text, required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: onpressed,
      child: Padding(
        padding: EdgeInsets.all(width / 100),
        child: CustomText(
            text: text,
            size: Responsive.isDesktop(context)
                ? 22
                : Responsive.isTablet(context)
                    ? 15
                    : 10),
      ),
    );
  }
}
