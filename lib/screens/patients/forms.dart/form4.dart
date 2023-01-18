import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class FormCreation4 extends StatefulWidget {
  const FormCreation4({Key? key}) : super(key: key);

  @override
  State<FormCreation4> createState() => _FormCreation4State();
}

// ignore: unused_element
class _FormCreation4State extends State<FormCreation4> {
  @override
  Widget build(BuildContext context) {
    final _formKey4 = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Form(
        key: _formKey4,
        child: Column(
          children: [
            if (Responsive.isMobile(context))
              CustomText(text: "Evaluation Clinique", size: 15),
            GridView.count(
                crossAxisCount: Responsive.isDesktop(context)
                    ? 2
                    : Responsive.isTablet(context)
                        ? 2
                        : 1,
                mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
                childAspectRatio: Responsive.isDesktop(context)
                    ? 11
                    : Responsive.isTablet(context)
                        ? 11
                        : 12,
                shrinkWrap: true,
                children: List.generate(mylist.length, (index) {
                  return Center(
                    child: mylist[index],
                  );
                })),
          ],
        ),
      ),
    );
  }
}

List mylist = [
  CustomField(name: "Hauteur"),
  CustomField(name: "Temps"),
  CustomField(name: "RR"),
  CustomField(name: "PA"),
  CustomField(name: "Systolique/Diastplique"),
  CustomField(name: "Glycemie Aleatoire"),
  CustomField(name: "Indice de masse corpS"),
  CustomCheckBox(name: "Douleurs?")
];
