
import 'package:flutter/material.dart';

import 'widgetForm.dart';



class ElementChuri extends StatefulWidget {
  const ElementChuri({Key? key}) : super(key: key);

  @override
  State<ElementChuri> createState() => _ElementChuriState();
}

class _ElementChuriState extends State<ElementChuri> {
  @override
  Widget build(BuildContext context) {
    return DropDown(name: 'Patient',);
  }
}


class ElementChuri1 extends StatefulWidget {
  const ElementChuri1({Key? key}) : super(key: key);

  @override
  State<ElementChuri1> createState() => _ElementChuri1State();
}

class _ElementChuri1State extends State<ElementChuri1> {
  @override
  Widget build(BuildContext context) {
    return DropDown(name: 'Maladie',);
  }
}


class ElementChuri2 extends StatefulWidget {
  const ElementChuri2({Key? key}) : super(key: key);

  @override
  State<ElementChuri2> createState() => _ElementChuri2State();
}

class _ElementChuri2State extends State<ElementChuri2> {
  @override
  Widget build(BuildContext context) {
    return DropDown(name: 'Hospitalisation',);
  }
}




class ElementChuri3 extends StatefulWidget {
  const ElementChuri3({Key? key}) : super(key: key);

  @override
  State<ElementChuri3> createState() => _ElementChuri3State();
}

class _ElementChuri3State extends State<ElementChuri3> {
  @override
  Widget build(BuildContext context) {
    return Datetext(name: 'Date',);
  }
}