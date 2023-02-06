import 'package:admin/responsive.dart';
import 'package:admin/screens/Contacts/contact-appbar.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class EtiquetteForm extends StatelessWidget {
  EtiquetteForm({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: contactAppBar(context, scaffoldKey),
      body: Column(children: [
        Container(
          height: heigth / 6,
          color: Colors.white54,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          child: CustomText(
                              text: "Etiquette de contact/ ",
                              size: Responsive.isDesktop(context)
                                  ? 22
                                  : Responsive.isTablet(context)
                                      ? 20
                                      : 14,
                              color: Colors.blue),
                        ),
                        CustomText(
                            text: "Nouveau",
                            size: Responsive.isDesktop(context)
                                ? 22
                                : Responsive.isTablet(context)
                                    ? 20
                                    : 14,
                            color: Colors.grey),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CustomText(
                                  text: "SAUVEGARDER",
                                  size: Responsive.isDesktop(context)
                                      ? 17
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  color: Colors.white),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CustomText(
                                  text: "ANNULER",
                                  size: Responsive.isDesktop(context)
                                      ? 17
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(70, 10, 70, 0),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              color: Colors.white),
          height: heigth / 2,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.count(
                  crossAxisCount: Responsive.isDesktop(context)
                      ? 2
                      : Responsive.isTablet(context)
                          ? 2
                          : 1,
                  mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                  crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
                  childAspectRatio: Responsive.isDesktop(context)
                      ? 10
                      : Responsive.isTablet(context)
                          ? 10
                          : 12,
                  shrinkWrap: true,
                  children: List.generate(mylist2.length, (index) {
                    return Center(
                      child: mylist2[index],
                    );
                  })),
            ),
          ]),
        )
      ]),
    );
  }
}

List mylist2 = [
  CustomField(name: "Nom de l'etiquette"),
  Row(
    children: [
      CustomText(text: "Couleur"),
      Spacer(),
      Container(
        height: 30,
        width: 300,
        color: Colors.red,
      ),
    ],
  ),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Categorie mere"),
  CustomCheckBox2(name: "Active")
];
