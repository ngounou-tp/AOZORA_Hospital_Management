import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/evolutionform.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class Form1 extends StatelessWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey71 = GlobalKey<FormState>();
    final _formKey721 = GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
        child: Form(
      key: _formKey71,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: heigth / 20,
              color: Colors.black12,
              child: CustomText(
                text: "DONNEES TECHNIQUES",
                color: Colors.grey,
                size: Responsive.isDesktop(context)
                    ? 20
                    : Responsive.isTablet(context)
                        ? 18
                        : 16,
              ),
            ),
            CustomField2(name: "Taille"),
            CustomField2(name: "Poids actuel"),
            CustomField2(name: "Poids Ideal"),
            CustomDropDownField2(
                defaultvalue: "Android",
                dropdownitem: ["Android", "Gynoide"],
                fieldname: "Type d'obesite"),
            CustomDropDownField2(
                defaultvalue: "Facile",
                dropdownitem: ["Facile", "Modere", "Dificile"],
                fieldname: "Coherence du tissu adipeux"),
            Container(
              height: heigth / 20,
              width: width,
              color: Colors.black12,
              child: CustomText(
                text: "STETOPALOGIES",
                color: Colors.grey,
                size: Responsive.isDesktop(context)
                    ? 20
                    : Responsive.isTablet(context)
                        ? 18
                        : 16,
              ),
            ),
            CustomDropDownField2(
                defaultvalue: "Facile",
                dropdownitem: ["Facile", "Modere", "Dificile"],
                fieldname: "Etat de la cellulite"),
            CustomDropDownField2(
                defaultvalue: "Facile",
                dropdownitem: ["Facile", "Modere", "Dificile"],
                fieldname: "Flacite Musculaire"),
            CustomDropDownField2(
                defaultvalue: "Facile",
                dropdownitem: ["Facile", "Modere", "Dificile"],
                fieldname: "Vergeture"),
            CustomField2(name: "Facteurs de declenchement"),
            Container(
              height: heigth / 20,
              width: width,
              color: Colors.black12,
              child: CustomText(
                text: "EVOLUTION DU CONTROLE DES ZONES DE CARROSERIE",
                color: Colors.grey,
                size: Responsive.isDesktop(context)
                    ? 20
                    : Responsive.isTablet(context)
                        ? 18
                        : 16,
              ),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Date',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'RENDEZ-VOUS',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'PATIENT',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'DOCTEUR',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'EVOLUTION',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return EvolutionForm(
                                    heigth: heigth,
                                    width: width,
                                    formKey721: _formKey721);
                              });
                        },
                        child: Text("ajouter une ligne"))),
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
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
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
                    DataCell(Text('')),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
