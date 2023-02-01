import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/traitements/traitement/form-copmponent/categorie-form.dart';
import 'package:admin/screens/traitements/traitement/form-copmponent/form-header.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

var position = 1;

class InscriptionForm extends StatefulWidget {
  InscriptionForm({
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
  State<InscriptionForm> createState() => _InscriptionFormState();
}

class _InscriptionFormState extends State<InscriptionForm> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    List mylist1 = [];
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: "Ouvrir: Service d'nscription",
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
              height: widget.heigth / 20,
              width: widget.width,
              child: Row(
                children: [
                  CustomElevatedButton(
                      function: () {}, name: "IMPRIMER LES ETIQUETTES"),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )),
          Container(
              height: widget.heigth / 16,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
              ),
              width: widget.width,
              child: Row(
                children: [
                  Spacer(),
                  HeaderItem(icon: Icons.menu, text1: "0", text2: "Liste de ")
                ],
              )),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(20),
        height: Responsive.isDesktop(context)
            ? widget.heigth / 1.5
            : Responsive.isTablet(context)
                ? widget.heigth / 1.2
                : widget.heigth,
        width: Responsive.isDesktop(context)
            ? widget.width / 1.3
            : Responsive.isTablet(context)
                ? widget.width / 1.5
                : widget.width,
        child: Form(
          key: widget._formKey721,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Nom de l'article",
                        weight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: widget.heigth / 10,
                            width: widget.width / 1.5,
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
                                labelText: "Service d'inscription",
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ImageUpload(),
                ],
              ),
              Container(
                width: widget.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (value) {
                        value = value!;
                      },
                    ),
                    Checkbox(
                      value: value,
                      onChanged: (value) {
                        value = value!;
                      },
                    ),
                    Checkbox(
                      value: value,
                      onChanged: (value) {
                        value = value!;
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: CustomText(
                  text: "Peut etre vendu peut etre acheter Kit produit",
                  weight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          position = 1;
                        });
                      },
                      child: CustomText(
                          text: "INFORMATIONS GENERALE",
                          size: 15,
                          color: position == 1 ? Colors.black : Colors.grey)),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          position = 2;
                        });
                      },
                      child: CustomText(
                          text: "COMPTABILITE",
                          size: 15,
                          color: position == 2 ? Colors.black : Colors.grey)),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          position = 3;
                        });
                      },
                      child: CustomText(
                          text: "KITS COMPONENT",
                          size: 15,
                          color: position == 3 ? Colors.black : Colors.grey))
                ],
              ),
              position == 1
                  ? Widget1()
                  : position == 2
                      ? Container()
                      : Widget2()
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

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final _formKeyCategorie = GlobalKey<FormState>();
    var mylist1 = [
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Type d'article"),
      CustomField(name: "Prix de vente"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Produit d'Hospital"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Taxes de vente"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Proccedure Time"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Cout"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Proccedure Time"),
      CustomField(name: "Reference interne"),
      CustomField(name: "Code bares"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Categorie d'article"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Proccedure de facturation"),
      IconButton(
        icon: Icon(
          Icons.directions,
          color: Colors.grey,
          size: 20,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return CategorieForm(
                    heigth: heigth,
                    width: width,
                    formKey721: _formKeyCategorie);
              });
        },
      )
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GridView.count(
              crossAxisCount: Responsive.isDesktop(context)
                  ? 2
                  : Responsive.isTablet(context)
                      ? 2
                      : 1,
              mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
              crossAxisSpacing: Responsive.isDesktop(context) ? 10 : 10,
              childAspectRatio: Responsive.isDesktop(context)
                  ? 11
                  : Responsive.isTablet(context)
                      ? 11
                      : 10,
              shrinkWrap: true,
              children: List.generate(mylist1.length, (index) {
                return Center(
                  child: mylist1[index],
                );
              })),
        ),
        CustomText(
          text: "Notes Interne",
          color: Colors.grey,
        ),
        Container(
          height: heigth / 10,
          child: TextFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              labelText: "Cette note est pour usage intern uniquement",
            ),
          ),
        ),
      ],
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
            label: CustomText(
          text: "ARTICLE",
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 12,
          weight: FontWeight.bold,
        )),
        DataColumn(
            label: CustomText(
          text: "UNITE DE MEASURE",
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 12,
          weight: FontWeight.bold,
        )),
        DataColumn(
            label: CustomText(
          text: "QUANTITE",
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 12,
          weight: FontWeight.bold,
        )),
        DataColumn(
            label: CustomText(
          text: "PRIX DU PRODUIT",
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 12,
          weight: FontWeight.bold,
        )),
        DataColumn(
            label: CustomText(
          text: "PRIX TOTAL",
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 12,
          weight: FontWeight.bold,
        )),
        DataColumn(label: Icon(Icons.menu, size: 15, color: Colors.grey)),
      ],
      rows: [
        DataRow(
          cells: <DataCell>[
            DataCell(ElevatedButton(
              onPressed: () {},
              child: Text("Ajouter une ligne"),
            )),
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
            DataCell(Text('')),
          ],
        ),
      ],
    );
  }
}
