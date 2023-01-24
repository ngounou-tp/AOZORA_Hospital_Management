import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class PatientCard extends StatefulWidget {
  final String nom;
  final String code;
  final String genre;
  final String docteur;
  final int? age;

  const PatientCard(
      {Key? key,
      required this.nom,
      required this.code,
      required this.genre,
      required this.docteur,
      this.age})
      : super(key: key);

  @override
  State<PatientCard> createState() => _PatientCardState();
}

class _PatientCardState extends State<PatientCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Card(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: width / 12,
            child: Icon(Icons.person,
                size: Responsive.isMobile(context) ? width / 6 : width / 10,
                color: Colors.grey),
          ),
          Spacer(),
          Center(
            child: Container(
              width: Responsive.isMobile(context) ? width / 5 : width / 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: widget.nom,
                    size: Responsive.isDesktop(context)
                        ? 14
                        : Responsive.isTablet(context)
                            ? 14
                            : 12,
                  ),
                  CustomText(
                    text: "code: " + widget.nom,
                    size: Responsive.isDesktop(context)
                        ? 14
                        : Responsive.isTablet(context)
                            ? 14
                            : 12,
                  ),
                  CustomText(
                    text: "Genre: " + widget.genre,
                    size: Responsive.isDesktop(context)
                        ? 14
                        : Responsive.isTablet(context)
                            ? 14
                            : 12,
                  ),
                  Text(
                    (widget.age == null) ? "" : "Age: " + widget.age.toString(),
                    style: TextStyle(
                        fontSize: Responsive.isDesktop(context)
                            ? 14
                            : Responsive.isTablet(context)
                                ? 14
                                : 12,
                        color: Colors.black),
                  ),
                  Text(
                    (widget.docteur != "")
                        ? "Docteur Principal: " + widget.docteur
                        : "",
                    style: TextStyle(
                        fontSize: Responsive.isDesktop(context)
                            ? 13
                            : Responsive.isTablet(context)
                                ? 12
                                : 11,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardLayout extends StatelessWidget {
  const CardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
            crossAxisCount: Responsive.isDesktop(context)
                ? 4
                : Responsive.isTablet(context)
                    ? 3
                    : 2,
            mainAxisSpacing: Responsive.isDesktop(context) ? 0 : 5,
            crossAxisSpacing: Responsive.isDesktop(context) ? 0 : 2,
            childAspectRatio: Responsive.isDesktop(context)
                ? 1.5
                : Responsive.isTablet(context)
                    ? 1.2
                    : 1.4,
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
  PatientCard(nom: "Valere", code: "HMSOO1", genre: "Homme", docteur: ""),
  PatientCard(
      nom: "M. MTOUMBA RAPHAEL",
      code: "HMSOO2",
      genre: "Homme",
      age: 12,
      docteur: "IVAN MAHI"),
  PatientCard(
      nom: "M. JOHN DOE",
      code: "HMSOO3",
      age: 42,
      genre: "Homme",
      docteur: "IVAN MAHI"),
  PatientCard(
      nom: "Mme Mengue Marie Clementine",
      code: "HMSOO4",
      genre: "Femme",
      docteur: "IVAN MAHI"),
  PatientCard(
      nom: "Dr DOBO AMBO EVELYNE",
      code: "HMSOO5",
      genre: "Femme",
      docteur: "YVAN MAHI"),
  PatientCard(
      nom: "DOBO AMBO EVELYNE", code: "HMSOO6", genre: "Homme", docteur: ""),
  PatientCard(nom: "Valere", code: "HMSOO1", genre: "Homme", docteur: ""),
  PatientCard(nom: "Valere", code: "HMSOO1", genre: "Homme", docteur: "")
];
