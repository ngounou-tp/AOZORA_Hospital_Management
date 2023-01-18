import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

List mylist1 = [
  CustomCheckBox(name: "Problemes cardiaque"),
  CustomCheckBox(name: "Asthme"),
  CustomCheckBox(name: "Cancer"),
  CustomCheckBox(name: "Grossesse"),
  CustomCheckBox(name: "Diabete"),
  CustomCheckBox(name: "Anticoagulant"),
  CustomCheckBox(name: "Epilepsie"),
  CustomCheckBox(name: "Constipation"),
  CustomCheckBox(name: "Desequilibre hormonal"),
  CustomCheckBox(name: "Metalliques VIH"),
  CustomCheckBox(name: "Dommages au colon"),
  CustomCheckBox(name: "Gastrite"),
  CustomCheckBox(name: "Dommages au veins"),
  CustomCheckBox(name: "Spames"),
  CustomCheckBox(name: "Varice"),
  CustomCheckBox(name: "Hemophilie"),
  CustomCheckBox(name: "Hysterectomie"),
  CustomCheckBox(name: "Hypertension"),
  CustomCheckBox(name: "Maladie thyroidienne"),
  CustomCheckBox(name: "Fybromes/ Kystes"),
  CustomCheckBox(name: "Maladie systemique")
];

class FormCreation6 extends StatefulWidget {
  const FormCreation6({Key? key}) : super(key: key);

  @override
  State<FormCreation6> createState() => _FormCreation6State();
}

class _FormCreation6State extends State<FormCreation6> {
  @override
  Widget build(BuildContext context) {
    final _formKey8 = GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey8,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Votre Sante",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 14,
              color: Colors.grey,
            ),
            Row(
              children: [
                CustomText(
                  text:
                      "1)Au cours de l`annee ecouler avez vous suivie au traitement chirugicale?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                Spacer(),
                if (!Responsive.isMobile(context))
                  Row(
                    children: [
                      CustomCheckBox(name: "oui"),
                      SizedBox(
                        height: 10,
                      ),
                      CustomCheckBox(name: "non"),
                    ],
                  ),
              ],
            ),
            if (Responsive.isMobile(context))
              Row(
                children: [
                  CustomCheckBox(name: "oui"),
                  SizedBox(
                    height: 10,
                  ),
                  CustomCheckBox(name: "non"),
                ],
              ),
            Row(
              children: [
                CustomText(
                  text:
                      "2)Au cours de l`annee ecouler avez vous suivie un traitement dermatologique?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                Spacer(),
                if (!Responsive.isMobile(context))
                  Row(
                    children: [
                      CustomCheckBox(name: "oui"),
                      SizedBox(
                        height: 10,
                      ),
                      CustomCheckBox(name: "non"),
                    ],
                  ),
              ],
            ),
            if (Responsive.isMobile(context))
              Row(
                children: [
                  CustomCheckBox(name: "oui"),
                  SizedBox(
                    height: 10,
                  ),
                  CustomCheckBox(name: "non"),
                ],
              ),
            Row(
              children: [
                CustomText(
                  text:
                      "3)Au cours des 9 derniers mois avez vous suivez un traitement chirugicale?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                Spacer(),
                if (!Responsive.isMobile(context))
                  Row(
                    children: [
                      CustomCheckBox(name: "oui"),
                      SizedBox(
                        height: 10,
                      ),
                      CustomCheckBox(name: "non"),
                    ],
                  ),
              ],
            ),
            if (Responsive.isMobile(context))
              Row(
                children: [
                  CustomCheckBox(name: "oui"),
                  SizedBox(
                    height: 10,
                  ),
                  CustomCheckBox(name: "non"),
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text:
                    " 4)Avez vous un les problemes de sante suivant dans le passe ou actuellement",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
              ),
            ),
            GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                crossAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                childAspectRatio: Responsive.isDesktop(context)
                    ? 30
                    : Responsive.isTablet(context)
                        ? 20
                        : 20,
                shrinkWrap: true,
                children: List.generate(mylist1.length, (index) {
                  return Center(
                    child: mylist1[index],
                  );
                })),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text:
                    " 5)Dressez la liste des medicaments, supplements, vitamines, diuretiques, comprimes de perte de poids etc que vous avez consommez regulierement",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
              ),
            ),
            SizedBox(
              width: width / 1.5,
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "6)AFumez vous?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "7)Faites vous de l`excercice regulierement?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "8)Suivez-vous un regime?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "9)Avez vous de habitude de sommeil regulier?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "10)Portez-vous des lentilles de contact?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "12)Avez vous des implant mettallique",
                      size: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 16
                              : 11,
                    ),
                    CustomText(
                      text: "ou des stimulateurs cardiaques?",
                      size: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 16
                              : 14,
                    ),
                  ],
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text: "VOTRE PEAU",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 14,
                color: Colors.grey,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text:
                          "13)A Quelle temperature ultlisez vous ultlisez vous l`eau de nettoyage a la maison?  ",
                      size: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 16
                              : 11,
                    ),
                    Spacer(),
                    if (!Responsive.isMobile(context))
                      Row(
                        children: [
                          CustomCheckBox(name: "Froide"),
                          SizedBox(
                            height: 10,
                          ),
                          CustomCheckBox(name: "Tiede"),
                          SizedBox(
                            height: 10,
                          ),
                          CustomCheckBox(name: "Chaude"),
                        ],
                      ),
                  ],
                ),
              ],
            ),
            if (!Responsive.isMobile(context))
              Row(
                children: [
                  CustomCheckBox(name: "Froide"),
                  SizedBox(
                    height: 10,
                  ),
                  CustomCheckBox(name: "Tiede"),
                  SizedBox(
                    height: 10,
                  ),
                  CustomCheckBox(name: "Chaude"),
                ],
              ),
            Row(
              children: [
                CustomText(
                  text:
                      "13)Avez vous des problemes particuliers de peau de visage ou de corps?",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                Spacer(),
                if (!Responsive.isMobile(context))
                  Row(
                    children: [
                      CustomCheckBox(name: "oui"),
                      CustomCheckBox(name: "non"),
                    ],
                  ),
              ],
            ),
            if (Responsive.isMobile(context))
              Row(
                children: [
                  CustomCheckBox(name: "oui"),
                  CustomCheckBox(name: "non"),
                ],
              ),
            CustomText(
              text:
                  "14)Quelle produits ultilisez vous regulierement pour les soins de votre peau",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                crossAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                childAspectRatio: Responsive.isDesktop(context)
                    ? 30
                    : Responsive.isTablet(context)
                        ? 20
                        : 20,
                shrinkWrap: true,
                children: List.generate(mylist2.length, (index) {
                  return Center(
                    child: mylist2[index],
                  );
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text:
                              "15)Avez vous subi des peeling chimiques, laser ou demabraison",
                          size: Responsive.isDesktop(context)
                              ? 18
                              : Responsive.isTablet(context)
                                  ? 16
                                  : 11,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        if (!Responsive.isMobile(context))
                          CustomCheckBox(name: "oui"),
                        CustomCheckBox(name: "non"),
                      ],
                    ),
                  ],
                ),
                if (Responsive.isMobile(context))
                  Row(
                    children: [
                      CustomCheckBox(name: "oui"),
                      SizedBox(
                        width: 10,
                      ),
                      CustomCheckBox(name: "non"),
                    ],
                  ),
              ],
            ),
            CustomCheckBox(name: "au cours des dernier mois?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text:
                          "16)Ultilisez-vous le Retin A ,Renova ou l`Adapalene?",
                      size: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 16
                              : 11,
                    ),
                  ],
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non"),
              ],
            ),
            CustomCheckBox(name: "au cours des dernier mois?"),
            CustomText(
              text:
                  "17)Ultilisez-vous les medicament contre l`acne ou d`autres pathologies? ",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                SizedBox(
                  height: 10,
                ),
                CustomCheckBox(name: "non"),
              ],
            ),
            CustomField(name: "Lequel?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Au cours des 6 derniers mois",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 16
                          : 11,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non"),
              ],
            ),
            CustomField(name: "Veuillez preciser"),
            CustomText(
              text:
                  "Ultilisez vous regulierement des produits contenant des ingredients suivant",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Acide glycolique"),
                CustomCheckBox(name: "Hydroacide Prod")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Acide lactique  "),
                CustomCheckBox(name: "Vitamine A ou der")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Gommage granuleux"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text: "NIVEAU D`HYDRATION",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text: "Quelle quantite d`eau consommez vous quotidiennement?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "1-4 verres"),
                CustomCheckBox(name: "5-8 verres"),
                CustomCheckBox(name: "plus de 9 verres")
              ],
            ),
            CustomText(
              text:
                  "Combien de boissons alcolisees consommez vous par semaine?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "N/A"),
                CustomCheckBox(name: "1-4 verres"),
                CustomCheckBox(name: "5-8 verres"),
                CustomCheckBox(name: "plus de 9 verres")
              ],
            ),
            CustomText(
              text: "Avez vous souffert des affections cuttanee suivant?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            CustomCheckBox(name: "Floconnage"),
            CustomCheckBox(name: "Etancheite"),
            CustomCheckBox(name: "Secherrese evidente"),
            CustomText(
              text:
                  "Quelle ecran solaire FPS ultilisez vous pour votre visage?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            CustomText(
              text: "Quelle ecran solaire FPS ultilisez vous pour votre corps?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text: "ACTIVITES CAPILLAIRES",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text: "Vous etes entrain de bronzer?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                SizedBox(
                  height: 10,
                ),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text:
                  "Une exposition modere au soleil provoque t-elles des brulures?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Rougissez facilement lorsque vous etes nerveuse?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Avez vous tendance as avoir des rougeurs?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Souffrez-vous de problemes respiratoires?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text: "ACTIVITES NERVEUSE",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text:
                  "Consommez-vous de boissons cafeinees(cafe, the, boissons gazeuses)?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text:
                  "Ressentez vous des sensations de brulures ou de demangeaisons sur votre peau?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Quelle est votre niveau de sensibilite a la douleur?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            CustomDropDownField(
              defaultvalue: "Normal",
              dropdownitem: ["Normal", "Moyen", "Grand"],
              fieldname: '.',
            ),
            CustomText(
              text: "Avez vous une reaction avec l'un de ces element?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Cosmetiques"),
                CustomCheckBox(name: "Pollen"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Medicaments"),
                CustomCheckBox(name: "Nouritures"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Iode"),
                CustomCheckBox(name: "Acides hydroxyles"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(name: "Animaux"),
                CustomCheckBox(name: "Parfums"),
              ],
            ),
            CustomField(name: "Autres"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text: "UNIQUEMENT LES CLIENTES FEMININE",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text: "Ultilisez vous des contraceptifs oraux?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Etes-vous enceinte ou essayez-vous de l'etres?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Allaitez vous?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Avez-vous eux une perte de grossese recente?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                text: "UNIQUEMENT LES CLIENTES MASCULIN",
                size: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isTablet(context)
                        ? 16
                        : 11,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text: "Quelle methode ultiliser vous pour vous raser?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "Electrique"),
                CustomCheckBox(name: "Rasage"),
                CustomCheckBox(name: "Humidite"),
              ],
            ),
            CustomText(
              text: "Ressentez vous une irritation apres le rasage?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Souffrez vous de poils incarne?",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomField(name: "Signer par votre nom")
          ],
        ),
      ),
    );
  }
}

List mylist2 = [
  CustomCheckBox(name: "Savon"),
  CustomCheckBox(name: "Masque"),
  CustomCheckBox(name: "Technicien de surface"),
  CustomCheckBox(name: "Peeling"),
  CustomCheckBox(name: "Tonic"),
  CustomCheckBox(name: "Produits des yeux"),
  CustomField(name: "Autres")
];
