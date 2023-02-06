import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

var position = 1;

class ContactCreationForm extends StatefulWidget {
  ContactCreationForm({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;

  @override
  State<ContactCreationForm> createState() => _ContactCreationFormState();
}

class _ContactCreationFormState extends State<ContactCreationForm> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: "Ouvrir: Creer Contacts",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 14,
                color: Colors.grey,
              ),
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.grey,
                  ))
            ],
          ),
          Container(
              height: widget.heigth / 15,
              width: widget.width,
              child: Row(
                children: [
                  CustomCheckBox(name: "Contact"),
                  CustomCheckBox(name: "Adresse de facturation"),
                  CustomCheckBox(name: "Adresse de livraison"),
                  CustomCheckBox(name: "Autres adresse"),
                  CustomCheckBox(name: "Adresse personelle"),
                ],
              )),
        ],
      ),
      content: Container(
        height: Responsive.isDesktop(context)
            ? heigth / 1.5
            : Responsive.isTablet(context)
                ? heigth / 1.2
                : heigth,
        width: Responsive.isDesktop(context)
            ? width
            : Responsive.isTablet(context)
                ? width / 1.5
                : width,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.count(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 2
                          : Responsive.isTablet(context)
                              ? 2
                              : 1,
                      mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
                      childAspectRatio: Responsive.isDesktop(context)
                          ? 11
                          : Responsive.isTablet(context)
                              ? 11
                              : 12,
                      shrinkWrap: true,
                      children: List.generate(mylist2.length, (index) {
                        return Center(
                          child: mylist2[index],
                        );
                      })),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      children: [
                        Container(
                          width: width / 20,
                          child: CustomText(text: "Notes"),
                        ),
                        Spacer(),
                        Container(
                          height: heigth / 8,
                          width: width / 1.5,
                          padding: EdgeInsets.only(left: 30),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              labelText: 'par exemple: Brandon freeman',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      actions: [
        CustomElevatedButton(function: () {}, name: "SAUVEGARDER ET FERMER"),
        CustomElevatedButton(function: () {}, name: "ENREGISTRER ET CREER"),
        CustomElevatedButton(function: () {}, name: "ANNULER"),
      ],
    );
  }
}

List mylist2 = [
  CustomField(name: "Nom du Contact"),
  CustomField(name: "Courriel"),
  CustomField(name: "Adresse"),
  CustomField(name: "Telephone"),
  CustomField(name: "Adresse"),
  CustomField(name: ""),
  CustomField(name: "Mobile"),
  CustomField(name: "Adresse"),
  CustomField4(name: "", defaultvalue: "default", dropdownitem: ["default"]),
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "")
];
