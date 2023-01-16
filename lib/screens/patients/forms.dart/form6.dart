import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

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
            CustomText(text: "Votre Sante", size: 30),
            CustomText(
              text:
                  "1)Au cours de l`annee ecouler avez vous suivie au traitement chirugicale?",
              size: 25,
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
            CustomText(
              text:
                  "2)Au cours de l`annee ecouler avez vous suivie un traitement dermatologique?",
              size: 25,
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
            CustomText(
              text:
                  "3)Au cours des 9 derniers mois avez vous suivez un traitement chirugicale?",
              size: 25,
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                  text:
                      " 4)Avez vous un les problemes de sante suivant dans le passe ou actuellement",
                  size: 25),
            ),
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
            CustomCheckBox(name: "Maladie systemique"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                  text:
                      " 5)Dressez la liste des medicaments, supplements, vitamines, diuretiques, comprimes de perte de poids etc que vous avez consommez regulierement",
                  size: 25),
            ),
            SizedBox(
              width: width,
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
                  size: 25,
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
                  size: 25,
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
                  size: 25,
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
                  size: 25,
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
                  size: 25,
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
                      size: 25,
                    ),
                    CustomText(
                      text: "ou des stimulateurs cardiaques?",
                      size: 25,
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
                size: 30,
                color: Colors.grey,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text:
                      "13)A Quelle temperature ultlisez vous ultlisez vous l`eau de nettoyage a la maison?  ",
                  size: 25,
                ),
              ],
            ),
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
            CustomText(
              text:
                  "13)Avez vous des problemes particuliers de peau de visage ou de corps?",
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomText(
                  text:
                      "14)Quelle produits ultilisez vous regulierement pour les soins de votre peau",
                  size: 25),
            ),
            CustomCheckBox(name: "Savon"),
            CustomCheckBox(name: "Masque"),
            CustomCheckBox(name: "Technicien de surface"),
            CustomCheckBox(name: "Peeling"),
            CustomCheckBox(name: "Tonic"),
            CustomCheckBox(name: "Produits des yeux"),
            CustomField(name: "Autres"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "15)Avez vous subi des peeling chimiques, laser",
                      size: 25,
                    ),
                    CustomText(
                      text: "ou demabraison",
                      size: 25,
                    ),
                  ],
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non"),
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
                      text: "16)Ultilisez-vous le Retin A ,Renova",
                      size: 25,
                    ),
                    CustomText(
                      text: "ou l`Adapalene?",
                      size: 25,
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
              size: 25,
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
                  size: 25,
                ),
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non"),
              ],
            ),
            CustomField(name: "Veuillez preciser"),
            CustomText(
              text:
                  "Ultilisez vous regulierement des produits contenant des ingredients suivant",
              size: 25,
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
                size: 30,
                color: Colors.grey,
              ),
            ),
            CustomText(
                text: "Quelle quantite d`eau consommez vous quotidiennement?",
                size: 25),
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
                size: 25),
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
                size: 25),
            CustomCheckBox(name: "Floconnage"),
            CustomCheckBox(name: "Etancheite"),
            CustomCheckBox(name: "Secherrese evidente"),
            CustomText(
                text:
                    "Quelle ecran solaire FPS ultilisez vous pour votre visage?",
                size: 25),
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
                text:
                    "Quelle ecran solaire FPS ultilisez vous pour votre corps?",
                size: 25),
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
                size: 30,
                color: Colors.grey,
              ),
            ),
            CustomText(text: "Vous etes entrain de bronzer?", size: 25),
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
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Rougissez facilement lorsque vous etes nerveuse?",
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Avez vous tendance as avoir des rougeurs?",
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Souffrez-vous de problemes respiratoires?",
              size: 25,
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
                size: 30,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text:
                  "Consommez-vous de boissons cafeinees(cafe, the, boissons gazeuses)?",
              size: 25,
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
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Quelle est votre niveau de sensibilite a la douleur?",
              size: 25,
            ),
            CustomDropDownField(
              defaultvalue: "Normal",
              dropdownitem: ["Normal", "Moyen", "Grand"],
              fieldname: '.',
            ),
            CustomText(
              text: "Avez vous une reaction avec l'un de ces element?",
              size: 25,
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
                size: 30,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text: "Ultilisez vous des contraceptifs oraux?",
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Etes-vous enceinte ou essayez-vous de l'etres?",
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Allaitez vous?",
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Avez-vous eux une perte de grossese recente?",
              size: 25,
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
                size: 30,
                color: Colors.grey,
              ),
            ),
            CustomText(
              text: "Quelle methode ultiliser vous pour vous raser?",
              size: 25,
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
              size: 25,
            ),
            Row(
              children: [
                CustomCheckBox(name: "oui"),
                CustomCheckBox(name: "non")
              ],
            ),
            CustomText(
              text: "Souffrez vous de poils incarne?",
              size: 25,
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
