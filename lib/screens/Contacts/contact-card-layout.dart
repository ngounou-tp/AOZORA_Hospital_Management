import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class ContactCardLayout extends StatelessWidget {
  const ContactCardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
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
      ]),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String? email;
  final String? poste;
  final String? location;
  final String? image;
  const ContactCard(
      {Key? key,
      required this.name,
      this.image,
      this.email,
      this.poste,
      this.location})
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
        image == null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: heigth / 6,
                  width: width / 10,
                  color: Colors.green,
                ),
              )
            : Image.asset(
                image!,
                height: heigth / 6,
                width: width / 10,
              ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomText(text: name, size: 13),
            CustomText(
              text: poste == null ? "" : poste!,
              size: 12,
              color: Colors.grey,
            ),
            CustomText(
              text: location == null ? "" : location!,
              size: 12,
              color: Colors.grey,
            ),
            CustomText(
              text: email == null ? "" : email!,
              size: 12,
              color: Colors.grey,
            ),
            Icon(
              Icons.timelapse_rounded,
              size: 15,
              color: Colors.grey,
            )
          ]),
        ),
        Spacer(),
      ]),
    );
  }
}

List mylist = [
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
  ),
  ContactCard(
    name: "Administrator",
    email: "admin@example.com",
  ),
  ContactCard(
    name: "Boog fritz",
    image: "assets/images/man.png",
    poste: "medecine en chef",
    location: "yaounde, cameroun",
  )
];
