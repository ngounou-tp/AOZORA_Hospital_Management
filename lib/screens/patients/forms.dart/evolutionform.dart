import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/signingform.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class EvolutionForm extends StatelessWidget {
  const EvolutionForm({
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
    return AlertDialog(
        title: Row(
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyCalenderField2(
                      name: "Date",
                    ),
                    CustomDropDownField2(
                        defaultvalue: "default",
                        dropdownitem: [
                          "default",
                        ],
                        fieldname: "Patient"),
                    CustomDropDownField2(
                        defaultvalue: "default",
                        dropdownitem: ["default", "Docteur"],
                        fieldname: "Docteurs"),
                    CustomDropDownField2(
                        defaultvalue: "default",
                        dropdownitem: [
                          "default",
                        ],
                        fieldname: "Rendez-vous"),
                    CustomText(text: "Derniere Evolution", size: 16),
                    Container(
                      height: heigth / 20,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Zone du corps",
                            size: 16,
                            color: Colors.grey,
                          ),
                          CustomText(
                            text: "Dernier",
                            size: 16,
                            color: Colors.grey,
                          ),
                          CustomText(
                            text: "Actuelle",
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    CustomField(name: "Poids"),
                    CustomField(name: "Yeux"),
                    CustomField(name: "Bras droit"),
                    CustomField(name: "Bras gauche"),
                    CustomField(name: "Abdomen haut"),
                    CustomField(name: "Abdomen Moyen"),
                    CustomField(name: "Bas ventre"),
                    CustomField(name: "Hanche"),
                    CustomField(name: "Cuisse droite"),
                    CustomField(name: "Cuisse gauche"),
                    SizedBox(
                      height: heigth / 13,
                      width: width,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          labelText: 'Evolution',
                        ),
                      ),
                    ),
                    CustomText(
                      text: "Signature du patients",
                      size: 16,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        CustomText(text: "Signature"),
                        Spacer(),
                        GestureDetector(
                            child: Container(
                              height: heigth / 5,
                              width: width / 4,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                            ),
                            onTap: () => showDialog(
                                context: context,
                                builder: (_) {
                                  return SigningForm(
                                      heigth: heigth, width: width);
                                }))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                              function: () {}, name: "Sauvegarder"),
                          SizedBox(
                            width: 20,
                          ),
                          CustomElevatedButton(function: () {}, name: "Annuler")
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
