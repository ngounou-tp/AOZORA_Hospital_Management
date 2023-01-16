import 'package:admin/color_constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/login/login_screen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MenuController(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class Domain{
  static var shinTheoPort = "http://saas24.shintheo.com:7000/";
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.@
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AOZORA Store',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        canvasColor: Colors.white,
        buttonColor: Colors.blue,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: appColor),

      ),
      home: Login()
    );
  }
}
