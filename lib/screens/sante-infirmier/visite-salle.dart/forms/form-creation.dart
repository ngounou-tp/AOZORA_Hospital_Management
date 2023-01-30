import 'package:admin/responsive.dart';
import 'package:admin/screens/sante-infirmier/sante-appbar.dart';
import 'package:admin/screens/sante-infirmier/visite-salle.dart/forms/evaluationform.dart';
import 'package:admin/screens/sante-infirmier/visite-salle.dart/forms/upform.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class VisiteLitsCreation extends StatefulWidget {
  VisiteLitsCreation({Key? key}) : super(key: key);

  @override
  State<VisiteLitsCreation> createState() => _VisiteLitsCreationState();
}

class _VisiteLitsCreationState extends State<VisiteLitsCreation> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final _formKeylits = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();
    var mylist1 = [
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Hopitalisation"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Evaluation"),
      Text(""),
      TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return EvaluationForm(
                      heigth: heigth, width: width, formKey721: _formKey);
                });
          },
          child: CustomText(
              text: "Creer une evaluation", size: 16, color: Colors.teal)),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Patient Infirmiere"),
      MyCalenderField(name: "Date"),
    ];

    var mylist2 = [
      Infos(width: width, text1: "Poids", text2: "0,00"),
      Infos(width: width, text1: "PR", text2: "0"),
      Infos(width: width, text1: "Hauteur", text2: "0,00"),
      Infos(width: width, text1: "PA", text2: "0/0"),
      Infos(width: width, text1: "Tempss", text2: "0,00"),
      Infos(width: width, text1: "Systolique/Diatolique", text2: "0,00"),
      Infos(width: width, text1: "Rythme Cardiaque", text2: "0,00"),
      Infos(width: width, text1: "Indice de masse corporelle", text2: "0,00"),
      CustomCheckBox2(name: "Depression"),
      CustomCheckBox2(name: "Pompe"),
      CustomCheckBox2(name: "Besoins Personelle"),
      CustomCheckBox2(name: "Catherine Urinaire"),
      CustomCheckBox2(name: "Douleur"),
      CustomField3(name: "Glycemie"),
      Container(
        width: width / 3,
        child: Row(
          children: [
            Container(
              width: width / 5,
              child: CustomText(text: "Niveau de Douleur"),
            ),
            Spacer()
          ],
        ),
      ),
      CustomField3(name: "Dieurese"),
      CustomCheckBox2(name: "Position"),
      CustomDropDownField3(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Evolution"),
      CustomCheckBox2(name: "Potty"),
      CustomCheckBox2(name: "Avertissement"),
      CustomCheckBox2(name: "Proximite"),
    ];

    return Scaffold(
      appBar: santeAppBar(
        context,
        scaffoldKey,
      ),
      body: ListView(
        children: [
          UpLitsContainer(),
          Container(
              height: heigth / 18,
              color: Colors.white,
              child: Row(
                children: [
                  CustomElevatedButton(function: () {}, name: "TERMINER"),
                  SizedBox(
                    width: 3,
                  ),
                  Spacer(),
                  Container(
                    height: heigth / 18,
                    width: width / 15,
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "BROUILLON",
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: heigth / 18,
                    width: width / 15,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "TERMINE",
                        size: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )),
          Form(
            key: _formKeylits,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.count(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 2
                          : Responsive.isTablet(context)
                              ? 2
                              : 1,
                      mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 10,
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
                              text: "Informations Generales",
                              size: 20,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )),
                  CustomText(
                    text:
                        "Remarque: Les details sont affiches en fonction de evaluation du patient",
                    size: 14,
                    color: Colors.grey,
                  ),
                  GridView.count(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 2
                          : Responsive.isTablet(context)
                              ? 2
                              : 1,
                      mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 10,
                      childAspectRatio: Responsive.isDesktop(context)
                          ? 20
                          : Responsive.isTablet(context)
                              ? 11
                              : 10,
                      shrinkWrap: true,
                      children: List.generate(mylist2.length, (index) {
                        return Center(
                          child: mylist2[index],
                        );
                      })),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Infos extends StatelessWidget {
  Infos({
    Key? key,
    required this.width,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final double width;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 3,
      child: Row(
        children: [
          Container(width: width / 5, child: CustomText(text: text1, size: 15)),
          Spacer(),
          CustomText(text: text2)
        ],
      ),
    );
  }
}
