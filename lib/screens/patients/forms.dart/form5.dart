import 'package:admin/screens/patients/buildrow.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class FormCreation5 extends StatefulWidget {
  const FormCreation5({Key? key}) : super(key: key);

  @override
  State<FormCreation5> createState() => _FormCreation5State();
}

// ignore: unused_element
class _FormCreation5State extends State<FormCreation5> {
  @override
  Widget build(BuildContext context) {
    final _formKey5 = GlobalKey<FormState>();
    final _formKey6 = GlobalKey<FormState>();
    final _formKey7 = GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomText(text: "Maladies", size: 30),
          ),
          CustomDropDownField(
            defaultvalue: "Ecrire",
            dropdownitem: ["Ecrire"],
            fieldname: "Alertes Medicale",
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomText(text: "Histoire Du Maladies", size: 30),
          ),
          Table(
            children: [
              buildRow(["Maladies", "Date de..", "Docteurs", "Traitement"],
                  isHeader: true),
              buildRow(["cell", "cell", "cell", "cell"]),
              buildRow(["cell", "cell", "cell", "cell"])
            ],
          ),
          CustomElevatedButton(
              function: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          title: Row(
                            children: [
                              CustomText(text: "Creer une maladies", size: 30),
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
                            height: heigth - 400,
                            child: Form(
                              key: _formKey6,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomDropDownField(
                                        defaultvalue: "paludisme",
                                        dropdownitem: [
                                          "paludisme",
                                          "cholera",
                                          "acne"
                                        ],
                                        fieldname: "Maladies"),
                                    CustomDropDownField(
                                        defaultvalue: "guerrit",
                                        dropdownitem: [
                                          "guerrit",
                                          "aigu",
                                          "chronique"
                                        ],
                                        fieldname: "Statut "),
                                    MyCalenderField(
                                      name: "Date de diagnostic",
                                    ),
                                    CustomCheckBox(name: "Maladie Allergique"),
                                    CustomCheckBox(
                                        name: "Avertissement de grossese"),
                                    CustomDropDownField(
                                        defaultvalue: "Bella Bella",
                                        dropdownitem: [
                                          "Bella Bella",
                                          "Bella Bello",
                                        ],
                                        fieldname: "Docteurs"),
                                    MyCalenderField(
                                      name: "Date de guerison",
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2),
                                        ),
                                        labelText: 'Remarques sur maladies',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        CustomElevatedButton(
                                            function: () {},
                                            name: "Sauvegarder"),
                                        CustomElevatedButton(
                                            function: () {}, name: "Annuler")
                                      ],
                                    )
                                  ]),
                            ),
                          ));
                    });
              },
              name: "Ajouter une maladie"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                CustomText(text: "Antecedents familiaux de maladies", size: 30),
          ),
          Table(
            children: [
              buildRow([
                "Maladies",
                "Origine",
                "Relatif",
              ], isHeader: true),
              buildRow(["cell", "cell", "cell"]),
              buildRow(["cell", "cell", "cell"])
            ],
          ),
          CustomElevatedButton(
              function: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          title: Row(
                            children: [
                              CustomText(
                                  text:
                                      "Creer antecedents familiaux de maladie",
                                  size: 30),
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
                            height: heigth / 3,
                            child: Form(
                              key: _formKey7,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomDropDownField(
                                        defaultvalue: "paludisme",
                                        dropdownitem: [
                                          "paludisme",
                                          "cholera",
                                          "acne"
                                        ],
                                        fieldname: "Maladies"),
                                    CustomDropDownField(
                                        defaultvalue: "maternel",
                                        dropdownitem: [
                                          "maternel",
                                          "paternel",
                                        ],
                                        fieldname: "Origine"),
                                    CustomDropDownField(
                                        defaultvalue: "frere",
                                        dropdownitem: [
                                          "frere",
                                          "soeur",
                                          "cousin"
                                              "cousine"
                                        ],
                                        fieldname: "Docteurs"),
                                    Row(
                                      children: [
                                        CustomElevatedButton(
                                            function: () {},
                                            name: "Sauvegarder"),
                                        CustomElevatedButton(
                                            function: () {}, name: "Annuler")
                                      ],
                                    )
                                  ]),
                            ),
                          ));
                    });
              },
              name: "Ajouter une ligne"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomText(text: "Risque Genetique", size: 30),
          ),
          Table(
            children: [
              buildRow([
                "Gene de maladie",
              ], isHeader: true),
              buildRow(["cell"]),
              buildRow(["cell"])
            ],
          ),
          isfield == 1
              ? TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      //<-- SEE HERE
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      //<-- SEE HERE
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: 'Name',
                  ),
                )
              : CustomText(text: "text"),
          CustomElevatedButton(
              function: () {
                setState(() {
                  isfield = 1;
                });
              },
              name: "Ajouter une ligne")
        ],
      ),
    );
  }
}
