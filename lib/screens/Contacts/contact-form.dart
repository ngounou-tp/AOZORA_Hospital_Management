import 'package:admin/responsive.dart';
import 'package:admin/screens/Contacts/contact-appbar.dart';
import 'package:admin/screens/Contacts/create-contact.dart';
import 'package:admin/screens/Contacts/up-contact-form.dart';
import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/traitements/traitement/form-copmponent/form-header.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

var position = 1;

class ContactCreation extends StatefulWidget {
  ContactCreation({Key? key}) : super(key: key);

  @override
  State<ContactCreation> createState() => _ContactCreationState();
}

class _ContactCreationState extends State<ContactCreation> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    List mylist2 = [
      CustomField(name: "Adresse"),
      CustomField(name: "Telephone"),
      CustomField(name: ""),
      CustomField(name: "Mobile"),
      CustomField4(
        name: "",
        defaultvalue: "default",
        dropdownitem: ["default"],
      ),
      CustomField(name: "Code par sms"),
      CustomDropDownField(
          defaultvalue: "default", dropdownitem: ["default"], fieldname: ""),
      Row(
        children: [
          TextButton.icon(
              onPressed: () {},
              label: CustomText(
                text: "Envoyer un SMS",
                color: Colors.purple,
              ),
              icon: Icon(Icons.arrow_upward, color: Colors.purple, size: 15)),
          TextButton.icon(
              onPressed: () {},
              label: CustomText(
                text: "Verifier l'OTP",
                color: Colors.purple,
              ),
              icon: Icon(Icons.smartphone, color: Colors.purple, size: 15))
        ],
      ),
      CustomField(name: "TVA"),
      CustomField(name: "OTP Whatsapp"),
      CustomField(name: "Courriel"),
      Row(
        children: [
          TextButton.icon(
              onPressed: () {},
              label: CustomText(
                text: "Envoyer un SMS",
                color: Colors.purple,
              ),
              icon: Icon(Icons.arrow_upward, color: Colors.purple, size: 15)),
          TextButton.icon(
              onPressed: () {},
              label: CustomText(
                text: "Verifier l'OTP",
                color: Colors.purple,
              ),
              icon: Icon(Icons.smartphone, color: Colors.purple, size: 15))
        ],
      ),
      CustomField(name: "Site web"),
      CustomDropDownField(
          defaultvalue: "FRANCAIS",
          dropdownitem: ["FRANCAIS", "ANGLAIS"],
          fieldname: "Langue"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Etiquettes")
    ];
    return Scaffold(
        appBar: contactAppBar(context, scaffoldKey),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            UpContactsContainer(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.whatsapp),
                      label: Text("WHATSAPP")),
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.whatsapp),
                    label: Text("HISTORIQUE DE CHAT"))
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  color: Colors.white),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Spacer(),
                      HeaderItem(
                          icon: Icons.calendar_month,
                          text1: "0",
                          text2: "Rendez-vous"),
                      HeaderItem(
                          icon: Icons.edit_calendar_outlined,
                          text1: "0,00",
                          text2: "Facture"),
                      HeaderItem(
                          icon: Icons.fire_truck_outlined,
                          text1: "0",
                          text2: "Commande"),
                      HeaderItem(
                          icon: Icons.heart_broken,
                          text1: "0",
                          text2: "Requisition"),
                      HeaderItem(
                          icon: Icons.calendar_month,
                          text1: "0",
                          text2: "Rendez-vous"),
                      Con6()
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        CustomCheckBox(name: "Particulier"),
                        CustomCheckBox(
                          name: "Societe",
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: heigth / 8,
                        width: width / 3,
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
                      Spacer(),
                      ImageUpload(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.count(
                        crossAxisCount: Responsive.isDesktop(context)
                            ? 2
                            : Responsive.isTablet(context)
                                ? 2
                                : 1,
                        mainAxisSpacing:
                            Responsive.isDesktop(context) ? 20 : 10,
                        crossAxisSpacing:
                            Responsive.isDesktop(context) ? 50 : 10,
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
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                position = 1;
                              });
                            },
                            child: CustomText(
                              text: "CONTACTS & ADRESS",
                              size: 13,
                              color: position == 1 ? Colors.black : Colors.grey,
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                position = 2;
                              });
                            },
                            child: CustomText(
                              text: "INFO SUR L'HOSPITAL",
                              size: 13,
                              color: position == 2 ? Colors.black : Colors.grey,
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                position = 3;
                              });
                            },
                            child: CustomText(
                              text: "VENTES ET ACHATS",
                              size: 13,
                              color: position == 3 ? Colors.black : Colors.grey,
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                position = 4;
                              });
                            },
                            child: CustomText(
                              text: "FACTURATION",
                              size: 13,
                              color: position == 4 ? Colors.black : Colors.grey,
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                position = 5;
                              });
                            },
                            child: CustomText(
                              text: "NOTES INTERNES",
                              size: 13,
                              color: position == 5 ? Colors.black : Colors.grey,
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                position = 6;
                              });
                            },
                            child: CustomText(
                              text: "COMMISSION D'AFFAIRES",
                              size: 15,
                              color: position == 6 ? Colors.black : Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  position == 1
                      ? ContactEtAdress()
                      : position == 2
                          ? InfoSurHospital()
                          : position == 3
                              ? VenteEtAchat()
                              : position == 4
                                  ? Facturation()
                                  : position == 5
                                      ? Container(
                                          height: heigth / 5,
                                          padding: EdgeInsets.all(20),
                                          child: CustomText(
                                              text: "Note Internes",
                                              color: Colors.grey),
                                        )
                                      : Container(
                                          height: heigth / 10,
                                          padding: EdgeInsets.all(20),
                                          child: CustomCheckBox2(
                                              name: "Donner la commisssion"),
                                        )
                ],
              )),
            )
          ]),
        ));
  }
}

class ContactEtAdress extends StatelessWidget {
  const ContactEtAdress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: TextButton.icon(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return ContactCreationForm(heigth: heigth, width: width);
              });
        },
        icon: Icon(Icons.add, color: Colors.blue, size: 20),
        label: CustomText(
          text: "AJOUTER",
          color: Colors.blue,
          size: 16,
        ),
      ),
    );
  }
}

class Con6 extends StatefulWidget {
  const Con6({Key? key}) : super(key: key);

  @override
  State<Con6> createState() => _Con6State();
}

class _Con6State extends State<Con6> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: "Plus",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 14
                          : 10,
                  color: Colors.grey),
              DropdownButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: width / 30,
                  color: Colors.grey,
                ),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: dropdownvalue,
                    child: CustomText(
                      text: dropdownvalue,
                      size: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 14
                              : 10,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              )
            ],
          ),
        ));
  }
}

class InfoSurHospital extends StatelessWidget {
  const InfoSurHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      width: width / 2,
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            CustomText(
              text: "Patient",
            ),
            Spacer(),
            ElevatedButton(onPressed: () {}, child: Text("Creer un patient"))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CustomText(text: "Docteur Referent", color: Colors.grey),
        ),
        CustomCheckBox2(name: "Est un medicin referent"),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CustomText(text: "#Services Ambulanciers", color: Colors.grey),
        ),
        CustomCheckBox2(name: "Chauffeur"),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CustomText(text: "Banque de sang", color: Colors.grey),
        ),
        CustomCheckBox2(name: "Est recepteur de sang"),
        CustomCheckBox2(name: "Est donneur de sang"),
      ]),
    );
  }
}

class VenteEtAchat extends StatelessWidget {
  const VenteEtAchat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mylist3 = [
      Padding(
        padding: const EdgeInsets.all(15),
        child: CustomText(text: "Vente", color: Colors.grey),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: CustomText(text: "Achats", color: Colors.grey),
      ),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Vendeur"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Conditions de paiment"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Conditions de paiment"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Moyen de payement"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "liste de prix"),
      CustomCheckBox2(name: "Rappel de reception"),
      Text(""),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Devise du founisseur"),
      Padding(
        padding: const EdgeInsets.all(15),
        child: CustomText(text: "Informations fiscale", color: Colors.grey),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: CustomText(text: "Devise", color: Colors.grey),
      ),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Position fiscale"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Reference"),
      Text(""),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Site web"),
      Text(""),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Secteur"),
    ];
    return Padding(
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
              ? 9
              : Responsive.isTablet(context)
                  ? 11
                  : 12,
          shrinkWrap: true,
          children: List.generate(mylist3.length, (index) {
            return Center(
              child: mylist3[index],
            );
          })),
    );
  }
}

class Facturation extends StatefulWidget {
  const Facturation({Key? key}) : super(key: key);

  @override
  State<Facturation> createState() => _FacturationState();
}

class _FacturationState extends State<Facturation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      width: width / 2,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child:
                    CustomText(text: "Comptes Bancaires", color: Colors.grey),
              ),
              DataTable(
                columns: [
                  DataColumn(
                      label: CustomText(
                    text: "Banque",
                    weight: FontWeight.bold,
                  )),
                  DataColumn(
                      label: CustomText(
                    text: "Numero de compte",
                    weight: FontWeight.bold,
                  )),
                  DataColumn(label: Text(""))
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(field == 0
                        ? ElevatedButton(
                            onPressed: () {
                              setState(() {
                                field = 1;
                              });
                            },
                            child: Text("Ajouter une ligne"))
                        : TextField()),
                    DataCell(field == 0 ? Text("") : TextField()),
                    DataCell(field == 0
                        ? Text("")
                        : Icon(Icons.delete, color: Colors.red, size: 20))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("")),
                    DataCell(Text("")),
                    DataCell(Text(""))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("")),
                    DataCell(Text("")),
                    DataCell(Text(""))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("")),
                    DataCell(Text("")),
                    DataCell(Text(""))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("")),
                    DataCell(Text("")),
                    DataCell(Text(""))
                  ])
                ],
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child:
                    CustomText(text: "Ecriture Comptable", color: Colors.grey),
              ),
              CustomDropDownField(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Compte Client"),
              CustomDropDownField(
                  defaultvalue: "default",
                  dropdownitem: ["default"],
                  fieldname: "Compte Fournisseur")
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: CustomText(
                      text: "voir les details des comptes",
                      color: Colors.blue,
                      size: 12)),
              TextButton(
                  onPressed: () {},
                  child: CustomText(
                      text: "Nouveau compte client?",
                      color: Colors.blue,
                      size: 12)),
              TextButton(
                  onPressed: () {},
                  child: CustomText(
                      text: "voir les details des comptes",
                      color: Colors.blue,
                      size: 12))
            ],
          ),
        ],
      ),
    );
  }
}

var field = 0;
