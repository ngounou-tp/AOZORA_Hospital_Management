import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  HeaderItem(
      {Key? key, required this.icon, required this.text1, required this.text2})
      : super(key: key);
  IconData icon;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: Responsive.isDesktop(context) ? heigth / 13 : heigth / 9,
      width: Responsive.isDesktop(context) ? width / 8.5 : width / 6,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: width / 50,
            color: Colors.grey,
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: text1,
                  size: Responsive.isDesktop(context) ? 13 : 9,
                  color: Colors.grey),
              CustomText(
                  text: text2,
                  size: Responsive.isDesktop(context) ? 13 : 9,
                  color: Colors.grey)
            ],
          )
        ],
      ),
    );
  }
}

class FormHeader extends StatelessWidget {
  const FormHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Row(
            children: [
              HeaderItem(
                  icon: Icons.edit_note_outlined,
                  text1: "voir la",
                  text2: "facture"),
              HeaderItem(
                  icon: Icons.medical_services,
                  text1: "0",
                  text2: "Rendez-vous"),
              HeaderItem(
                  icon: Icons.medical_information_outlined,
                  text1: "0",
                  text2: "Proccedures"),
              HeaderItem(
                  icon: Icons.document_scanner,
                  text1: "Apercu des",
                  text2: "documents"),
              HeaderItem(
                  icon: Icons.bed_outlined, text1: "Chirugie", text2: ""),
              HeaderItem(
                  icon: Icons.menu_rounded, text1: "0", text2: "Demandes"),
              HeaderItem(
                  icon: Icons.flaky, text1: "0", text2: "Resultats du.."),
              HeaderItem(
                  icon: Icons.menu_rounded, text1: "Reservation", text2: "BO"),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  HeaderItem(
                      icon: Icons.edit_note_outlined,
                      text1: "voir la",
                      text2: "facture"),
                  HeaderItem(
                      icon: Icons.medical_services,
                      text1: "0",
                      text2: "Rendez-vous"),
                  HeaderItem(
                      icon: Icons.medical_information_outlined,
                      text1: "0",
                      text2: "Proccedures"),
                  HeaderItem(
                      icon: Icons.document_scanner,
                      text1: "Apercu des",
                      text2: "documents"),
                  HeaderItem(
                      icon: Icons.bed_outlined, text1: "Chirugie", text2: ""),
                ],
              ),
              Row(
                children: [
                  HeaderItem(
                      icon: Icons.menu_rounded, text1: "0", text2: "Demandes"),
                  HeaderItem(
                      icon: Icons.flaky, text1: "0", text2: "Resultats du.."),
                  HeaderItem(
                      icon: Icons.menu_rounded,
                      text1: "Reservation",
                      text2: "BO"),
                ],
              )
            ],
          );
  }
}
