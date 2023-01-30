import 'package:admin/screens/sante-infirmier/proccedure-patient.dart';
import 'package:admin/screens/sante-infirmier/sante-appbar.dart';
import 'package:flutter/material.dart';

var showform = 0;

class SanteInfirmier extends StatelessWidget {
  SanteInfirmier({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: santeAppBar(
          context,
          scaffoldKey,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProccedurePatient(),
            ],
          ),
        ));
  }
}
