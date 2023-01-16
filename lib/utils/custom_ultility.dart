import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  const CustomText(
      {Key? key, required this.text, this.size, this.color, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}

class CustomImages extends StatelessWidget {
  final String path;
  final double width;
  final double heigth;
  final double radius;

  const CustomImages(
      {Key? key,
      required this.path,
      required this.width,
      required this.heigth,
      required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        path,
        height: heigth,
        width: width,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final IconData icone;
  final String texte;
  const CustomTextButton({Key? key, required this.icone, required this.texte})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              icone,
              size: 10,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
            ),
            CustomText(
              text: texte,
              size: 10,
              color: Colors.grey,
            )
          ],
        ));
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final IconData icone;
  final String texte;
  final Color? colour;

  const CustomOutlinedButton(
      {Key? key, required this.icone, required this.texte, this.colour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Column(
        children: [
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(
              icone,
              color: colour ?? Colors.red,
              size: 10,
            ),
            label: CustomText(
              text: texte,
              size: 15,
              color: Colors.black,
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 0.0, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: CustomText(
              text: "Earnings",
              color: Colors.grey,
              size: 10,
            ),
          )
        ],
      ),
      onPressed: () {},
    );
  }
}
