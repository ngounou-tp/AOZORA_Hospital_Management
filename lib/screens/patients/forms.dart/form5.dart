import 'package:admin/responsive.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: heigth / 20,
              width: width,
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              color: Colors.black12,
              child: CustomText(
                  text: "Alertes Maladies",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                  color: Colors.grey),
            ),
            Row(
              children: [
                CustomText(
                  text: "Alerte Medicale",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                ),
                Spacer(),
                SizedBox(
                  width: width / 2.5,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CustomText(
                  text: "Antecedents Medicaux",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                ),
                Spacer(),
                SizedBox(
                  width: width / 2.5,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: heigth / 20,
              width: width,
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              color: Colors.black12,
              child: CustomText(
                  text: "Histoire Du Malades",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                  color: Colors.grey),
            ),
            DataTable(
              columns: <DataColumn>[
                DataColumn(
                    label: CustomText(
                  text: "MALADIE",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                )),
                DataColumn(
                    label: CustomText(
                  text: "DATE DU DIAGNOSTIC",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                )),
                DataColumn(
                    label: CustomText(
                  text: "DOCTEURS",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                )),
                DataColumn(
                    label: CustomText(
                  text: "TRAITEMENT",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                ))
              ],
              rows: [
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      CustomElevatedButton(
                          function: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                      title: Row(
                                        children: [
                                          CustomText(
                                            text: "Creer une maladies",
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
                                            ? heigth - 100
                                            : Responsive.isTablet(context)
                                                ? heigth - 100
                                                : heigth,
                                        width: Responsive.isDesktop(context)
                                            ? width - 600
                                            : Responsive.isTablet(context)
                                                ? width - 100
                                                : width,
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
                                                CustomCheckBox(
                                                    name: "Maladie Allergique"),
                                                CustomCheckBox(
                                                    name:
                                                        "Avertissement de grossese"),
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
                                                  decoration:
                                                      const InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.black,
                                                          width: 2),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.black,
                                                          width: 2),
                                                    ),
                                                    labelText:
                                                        'Remarques sur maladies',
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    CustomElevatedButton(
                                                        function: () {},
                                                        name: "Sauvegarder"),
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    CustomElevatedButton(
                                                        function: () {},
                                                        name: "Annuler")
                                                  ],
                                                )
                                              ]),
                                        ),
                                      ));
                                });
                          },
                          name: "Ajouter une maladie"),
                    ),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
              ],
            ),
            Container(
              height: heigth / 20,
              width: width,
              color: Colors.black12,
              child: CustomText(
                text: "Antecedents familiaux de maladies",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 14,
                color: Colors.grey,
              ),
            ),
            DataTable(
              columns: <DataColumn>[
                DataColumn(
                    label: CustomText(
                  text: "MALADIE",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                )),
                DataColumn(
                    label: CustomText(
                  text: "MATERNELLE OU PATERNELLE",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                )),
                DataColumn(
                    label: CustomText(
                  text: "RELATIF",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                ))
              ],
              rows: [
                DataRow(
                  cells: <DataCell>[
                    DataCell(
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
                                            ? heigth / 2
                                            : Responsive.isTablet(context)
                                                ? heigth / 2.5
                                                : heigth,
                                        width: Responsive.isDesktop(context)
                                            ? width / 2
                                            : Responsive.isTablet(context)
                                                ? width / 2.5
                                                : width,
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
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    CustomElevatedButton(
                                                        function: () {},
                                                        name: "Annuler")
                                                  ],
                                                )
                                              ]),
                                        ),
                                      ));
                                });
                          },
                          name: "Ajouter une ligne"),
                    ),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomText(
                  text: "Risque Genetique",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14),
            ),
            DataTable(
              columns: <DataColumn>[
                DataColumn(
                    label: CustomText(
                  text: "GENE DE LA MALADIE",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 14,
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(
                    TextFormField(
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
                    ),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(CustomElevatedButton(
                      function: () {
                        setState(() {
                          isfield = 2;
                        });
                      },
                      name: "Ajouter une ligne"))
                ]),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

var isfield = 1;
