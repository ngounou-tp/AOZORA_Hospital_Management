import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/sante-infirmier/visite-salle.dart/forms/form-creation.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class EvaluationForm extends StatelessWidget {
  EvaluationForm({
    Key? key,
    required this.heigth,
    required this.width,
    required GlobalKey<FormState> formKey721,
  })  : _formKey721 = formKey721,
        super(key: key);

  final double heigth;
  final double width;
  final GlobalKey<FormState> _formKey721;

  @override
  Widget build(BuildContext context) {
    List mylist2 = [
      CustomField(name: "Poids"),
      CustomField(name: "RR"),
      CustomField(name: "Hauteur"),
      CustomField(name: "PA"),
      CustomField(name: "Temp"),
      CustomField(name: "systolique/diatolique"),
      CustomField(name: "Rythme Cardiaque"),
      CustomField(name: "Saturation d'O2"),
      Infos(
        text1: "Indice de masse corporelle",
        text2: "0,00",
        width: width,
      ),
      Infos(
        text1: "Indice de masse statut",
        text2: "0,00",
        width: width,
      )
    ];
    return AlertDialog(
      title: Column(
        children: [
          Row(
            children: [
              CustomText(
                text: "Creer une evolution du corps",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 14,
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
              height: heigth / 20,
              width: width,
              child: Row(
                children: [
                  CustomElevatedButton(function: () {}, name: "TERMINER"),
                  SizedBox(
                    width: 10,
                  ),
                  CustomElevatedButton(function: () {}, name: "ANNULER"),
                  Spacer(),
                  OutlinedButton(
                      onPressed: () {},
                      child: CustomText(
                          text: "BROUILLON", size: 13, color: Colors.black)),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: CustomText(
                          text: "TERMINE", size: 13, color: Colors.black))
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
            ? width / 1.3
            : Responsive.isTablet(context)
                ? width / 1.5
                : width,
        child: Form(
          key: _formKey721,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GridView.count(
                  crossAxisCount: Responsive.isDesktop(context)
                      ? 2
                      : Responsive.isTablet(context)
                          ? 2
                          : 1,
                  mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                  crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 10,
                  childAspectRatio: Responsive.isDesktop(context)
                      ? 7
                      : Responsive.isTablet(context)
                          ? 11
                          : 10,
                  shrinkWrap: true,
                  children: List.generate(mylist1.length, (index) {
                    return Center(
                      child: mylist1[index],
                    );
                  })),
              Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white),
                  height: heigth / 15,
                  width: width,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomText(
                          text: "DETAILS",
                          size: 20,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )),
              GridView.count(
                  crossAxisCount: Responsive.isDesktop(context)
                      ? 2
                      : Responsive.isTablet(context)
                          ? 2
                          : 1,
                  mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                  crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 10,
                  childAspectRatio: Responsive.isDesktop(context)
                      ? 9
                      : Responsive.isTablet(context)
                          ? 11
                          : 10,
                  shrinkWrap: true,
                  children: List.generate(mylist2.length, (index) {
                    return Center(
                      child: mylist2[index],
                    );
                  })),
              Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white),
                  height: heigth / 15,
                  width: width,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomText(
                          text: "NIVEAU DE DOULEUR",
                          size: 20,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )),
              CustomDropDownField2(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Niveau de douleur")
            ]),
          ),
        ),
      ),
      actions: [
        CustomElevatedButton(function: () {}, name: "Creer"),
        CustomElevatedButton(function: () {}, name: "Annuler")
      ],
    );
  }
}

List mylist1 = [
  Container(height: 400, child: Text("")),
  Container(
      height: 400, padding: EdgeInsets.only(bottom: 50), child: ImageUpload()),
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Patient"),
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Docteur"),
  CustomField(name: "Age"),
  MyCalenderField(name: "Date"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Rendez-vous"),
];
