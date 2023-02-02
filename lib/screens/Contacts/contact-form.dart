import 'package:admin/screens/Contacts/contact-appbar.dart';
import 'package:flutter/material.dart';

class ContactCreation extends StatelessWidget {
  ContactCreation({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: contactAppBar(context, scaffoldKey),
        body: SingleChildScrollView(
          child: Column(children: []),
        ));
  }
}
