import 'package:admin/appbar_component/appbar_page.dart';
import 'package:admin/screens/patients/patienLayoutSreen.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  PatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: customAppBar(
        context,
        scaffoldKey,
      ),
      body: LayoutScreen(),
    );
  }
}
