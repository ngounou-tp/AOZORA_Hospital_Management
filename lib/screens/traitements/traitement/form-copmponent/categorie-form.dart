import 'package:admin/responsive.dart';
import 'package:admin/screens/traitements/traitement/form-copmponent/form-header.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class CategorieForm extends StatelessWidget {
  CategorieForm({
    Key? key,
    required this.heigth,
    required this.width,
    required GlobalKey<FormState> formKey721,
  })  : _formKey721 = formKey721,
        super(key: key);

  final double heigth;
  final double width;
  final GlobalKey<FormState> _formKey721;

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: "Ouvrir: Categorie d'article",
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
              height: heigth / 16,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
              ),
              width: width,
              child: Row(
                children: [
                  Spacer(),
                  HeaderItem(icon: Icons.menu, text1: "7", text2: "Articles")
                ],
              )),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(20),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Categorie",
                    weight: FontWeight.bold,
                  ),
                  Container(
                    height: heigth / 10,
                    width: width / 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        labelText: "All",
                      ),
                    ),
                  )
                ],
              ),
              CustomDropDownField2(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: ""),
              CustomDropDownField2(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Sequence de code bares"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomText(
                  text: "Numero de serie/blockage du lot",
                  color: Colors.grey,
                ),
              ),
              CustomCheckBox(
                  name: "Bloquer les nouveaux numero de serie/ lots"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomText(
                  text: "Logistique",
                  color: Colors.grey,
                ),
              ),
              CustomDropDownField2(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Forcer la strategie d'enlevement"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomText(
                  text: "Valorisation de l'inventaire",
                  color: Colors.grey,
                ),
              ),
              CustomDropDownField2(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Methode coute"),
              CustomDropDownField2(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Valorisation de l'inventaire"),
            ]),
          ),
        ),
      ),
      actions: [
        CustomElevatedButton(function: () {}, name: "SAUVEGARDER"),
        CustomElevatedButton(function: () {}, name: "ANNULER")
      ],
    );
  }
}
