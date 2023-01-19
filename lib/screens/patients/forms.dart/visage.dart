import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/signingform.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class Visage extends StatelessWidget {
  final double heigth;
  final double width;

  const Visage({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey721 = GlobalKey<FormState>();
    return AlertDialog(
        title: Row(
          children: [
            CustomText(
              text: "Creer cartographie du visage",
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
                ? width
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image.asset(
                            "assets/images/gift.png",
                            height: heigth / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      GridView.count(
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
                              ? 16
                              : Responsive.isTablet(context)
                                  ? 11
                                  : 12,
                          shrinkWrap: true,
                          children: List.generate(mylist.length, (index) {
                            return Center(
                              child: mylist[index],
                            );
                          })),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          text: "Signature du patient",
                          color: Colors.grey,
                          size: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 18
                                  : 16,
                        ),
                      ),
                      GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: heigth / 5,
                              width: width,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                          onTap: () => showDialog(
                              context: context,
                              builder: (_) {
                                return SigningForm(
                                    heigth: heigth, width: width);
                              })),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CustomElevatedButton(
                                function: () {}, name: "Sauvegarder"),
                            SizedBox(
                              width: 20,
                            ),
                            CustomElevatedButton(
                                function: () {}, name: "Annuler")
                          ],
                        ),
                      )
                    ]),
              ),
            )));
  }
}

List mylist = [
  CustomDropDownField(
    defaultvalue: "default",
    dropdownitem: ["default"],
    fieldname: "Patient",
  ),
  CustomDropDownField(
    defaultvalue: "default",
    dropdownitem: ["default"],
    fieldname: "Docteur",
  ),
  MyCalenderField(name: "Date"),
  CustomDropDownField(
    defaultvalue: "default",
    dropdownitem: ["default"],
    fieldname: "Rendez-vous",
  ),
  CustomField(name: "1"),
  CustomField(name: "2"),
  CustomField(name: "3"),
  CustomField(name: "4"),
  CustomField(name: "5"),
  CustomField(name: "6"),
  CustomField(name: "7"),
  CustomField(name: "8"),
  CustomField(name: "9"),
  CustomField(name: "10"),
  CustomField(name: "11"),
  CustomField(name: "12"),
  CustomField(name: "13"),
  CustomField(name: "14")
];
