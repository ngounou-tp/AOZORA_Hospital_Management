import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final IconData icone;

  CardButton({
    Key? key,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(width / 500),
        child: IconButton(
          icon: Icon(icone,
              size: Responsive.isDesktop(context)
                  ? 22
                  : Responsive.isTablet(context)
                      ? 18
                      : 13,
              color: Colors.black),
          onPressed: () {},
        ),
      ),
    );
  }
}
