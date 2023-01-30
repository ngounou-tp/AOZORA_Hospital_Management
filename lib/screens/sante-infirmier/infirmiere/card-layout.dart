import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class InfirmierCard extends StatelessWidget {
  final String name;
  final String image;
  const InfirmierCard({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset(
          image,
          height: heigth / 15,
          width: width / 15,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(text: name, size: 13),
          CustomText(
            text: "Infirmieres & Infirmiers",
            size: 12,
            color: Colors.grey,
          ),
          Spacer(),
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(
            Icons.circle,
            size: 15,
            color: Colors.orange,
          ),
          Spacer(),
          Icon(
            Icons.message_rounded,
            size: 15,
            color: Colors.purple,
          ),
        ])
      ]),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
            crossAxisCount: Responsive.isDesktop(context)
                ? 3
                : Responsive.isTablet(context)
                    ? 2
                    : 1,
            mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
            crossAxisSpacing: Responsive.isDesktop(context) ? 10 : 10,
            childAspectRatio: Responsive.isDesktop(context)
                ? 3
                : Responsive.isTablet(context)
                    ? 2.5
                    : 6,
            shrinkWrap: true,
            children: List.generate(mylist.length, (index) {
              return Center(
                child: mylist[index],
              );
            })),
      ],
    );
  }
}

List mylist = [
  InfirmierCard(
    name: "Mengue Marie Clementine",
    image: "assets/images/man.png",
  ),
  InfirmierCard(
    name: "Mengue Marie Clementine",
    image: "assets/images/man.png",
  ),
  InfirmierCard(
    name: "Mengue Marie Clementine",
    image: "assets/images/man.png",
  ),
  InfirmierCard(
    name: "Mengue Marie Clementine",
    image: "assets/images/man.png",
  ),
  InfirmierCard(
    name: "Mengue Marie Clementine",
    image: "assets/images/man.png",
  )
];
