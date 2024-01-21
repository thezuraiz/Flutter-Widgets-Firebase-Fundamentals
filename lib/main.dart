import 'package:flutter/material.dart';
import 'package:s2/Firebase/FirebaseHome.dart';
import 'package:s2/Firebase/FirebaseLoginIn.dart';
import 'package:s2/Firebase/FirebaseSignUp.dart';
import 'package:s2/Widgets/BottomNavigationBar.dart';
import 'package:s2/Widgets/ColumnWidget.dart';
import 'package:s2/Widgets/DrawerWidget.dart';
import 'package:s2/Widgets/Form%20Validation/CustomFormValidation.dart';
import 'package:s2/Widgets/HeroWidget.dart';
import 'package:s2/Widgets/How%20to%20Import%20Image/ImageWidget.dart';
import 'package:s2/Widgets/ListViewBuilder.dart';
import 'package:s2/Widgets/RowWidget.dart';
import 'package:s2/Widgets/ScaffoldWidget.dart';
import 'package:s2/Widgets/TableWidget.dart';
import 'package:s2/Widgets/TextFieldWidget.dart';
import 'package:s2/Widgets/TextWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      initialRoute: "firebase-landing-page",
      routes: {
        "/": (context) => ScaffoldWidget(),
        "text-widget": (context) => TextWidget(text: "I am Text Widget"),
        "row-widget": (context) => RowWidget(),
        "column-widget": (context) => ColumnWidget(),
        "image-widget": (context) => ImageWidget(path: "Assets/Images/123.png"),
        "text-field-widget": (context) => TextFieldWidget(),
        "list-View-Builder": (context) => ListViewBuilder(),
        "drawer-Widget": (context) => DrawerWidget(),
        "Custom-Form-Validation": (context) => CustomFormValidation(),
        "hero-Widget": (context) => FirstHeroScreen(),
        "botttom-Navigation-Wid": (context) => BotttomNavigationWid(),
        "table-Widget": (context) => TableWid(),
        "firebase-landing-page": (context) => FirebaseHome(),
        "firebase-login-page": (context) => LoginInPage(),
        "firebase-register-page": (context) => FirebaseSignUp(),

      },
    );
  }
}
