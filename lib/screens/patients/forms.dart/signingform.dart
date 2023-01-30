import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class SigningForm extends StatelessWidget {
  const SigningForm({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          CustomText(
              text: "Adopter votre signature", size: 16, color: Colors.grey),
          Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 30,
                color: Colors.grey,
              )),
        ],
      ),
      content: Container(
        height: Responsive.isDesktop(context)
            ? heigth / 1.5
            : Responsive.isTablet(context)
                ? heigth / 1.2
                : heigth,
        width: Responsive.isDesktop(context)
            ? width / 2
            : Responsive.isTablet(context)
                ? width / 1.5
                : width,
        child: Column(children: [
          Container(
            height: heigth / 15,
            width: width,
            color: Colors.black12,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "Dessiner",
                  size: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "Charger",
                  size: 16,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "Effacer",
                  size: 16,
                ),
              ),
            ]),
          ),
          Container(
            height: heigth / 3,
            width: width,
            child: Center(
              child: SizedBox(
                  height: heigth / 8, width: width / 2.5, child: TextField()),
            ),
          ),
          Container(
            height: heigth / 10,
            width: width,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: CustomText(
                text:
                    "En cliquant sur adopter et signer, j'accepte que la/les signature, le/les initiales choisies seront une representation valide et electronique de ma/mes signature , le/les initiales manuscrites pour tous besoin quand elle/s seront ultiliser pour les documents, contrats, juridiquement contraignant inclus.",
                size: 10),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "Annuler",
                      size: 12,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "Adopter et signer",
                      size: 12,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
