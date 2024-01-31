import 'package:basic/LB_8_NAVIGATION/homePage.dart';
import 'package:basic/Pages/AnnasLogin.dart';
import 'package:basic/Pages/BMI_Calculator.dart';
import 'package:basic/Pages/Cart.dart';
import 'package:basic/Pages/CounterApp.dart';
import 'package:basic/Pages/Courseratask.dart';
import 'package:basic/Pages/GridCatalogy.dart';
import 'package:basic/Pages/Instagram.dart';
import 'package:basic/Pages/SharedPref.dart';
import 'package:basic/Pages/SharedPref2.dart';
import 'package:basic/Pages/SimpleCalculator.dart';
import 'package:basic/Pages/VxCatalogy.dart';
import 'package:basic/Pages/WhatsapppScreen.dart';
import 'package:basic/widgets/AutomaticFormValidation.dart';
import 'package:basic/widgets/AutomaticFormValidator.dart';
import 'package:basic/widgets/BoxDecoration.dart';
import 'package:basic/widgets/Card.dart';
import 'package:basic/widgets/CircleAvatarWidget.dart';
import 'package:basic/widgets/ConstraintBoxWid.dart';
import 'package:basic/widgets/CustomFonts.dart';
import 'package:basic/widgets/Dart_Prac.dart';
import 'package:basic/widgets/DateTimePicker.dart';
import 'package:basic/widgets/DefaultTabBar.dart';
import 'package:basic/widgets/FutureWidget.dart';
import 'package:basic/widgets/GridViewWid.dart';
import 'package:basic/widgets/InkWell.dart';
import 'package:basic/widgets/InputData.dart';
import 'package:basic/widgets/Listtile.dart';
import 'package:basic/widgets/Listview.dart';
import 'package:basic/widgets/Listviewbuilder.dart';
import 'package:basic/widgets/Listviewseperator.dart';
import 'package:basic/widgets/PaddingandMargin.dart';
import 'package:basic/widgets/PositionWid.dart';
import 'package:basic/widgets/RangeSlider.dart';
import 'package:basic/widgets/RichTextWid.dart';
import 'package:basic/widgets/SingleChildScroll.dart';
import 'package:basic/widgets/SizedBoxWid.dart';
import 'package:basic/widgets/SplashScreen.dart';
import 'package:basic/widgets/StackWid.dart';
import 'package:basic/widgets/StepperWid.dart';
import 'package:basic/widgets/StreamWidget.dart';
import 'package:basic/widgets/TabbarWid.dart';
import 'package:basic/widgets/TableWid.dart';
import 'package:basic/widgets/WrapWid.dart';
import 'package:basic/widgets/container_vs_sizedBox.dart';
import 'package:basic/widgets/expendedwidget.dart';
import 'package:flutter/material.dart';

import './Pages/home-page.dart';
import './Pages/login-page.dart';
import './Pages/register-page.dart';
import './Pages/task1.dart';
import './Pages/catalogy.dart';
import 'package:basic/Pages/S1.dart';

import './utils/routes.dart';
import './widgets/theme.dart';
import 'Pages/AnasWork.dart';
import 'Pages/Assignment2.dart';
// import 'Pages/VxCat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.Listviewbuilder,
      routes: {
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.LoginPage: (context) => LoginPage(),
        MyRoutes.RegisterPage: (context) => RegisterPage(),
        MyRoutes.Task: (context) => Task(),
        MyRoutes.Catalogy: (context) => productTile(),
        MyRoutes.GridCatalogy: (context) => GridCatalogy(),
        MyRoutes.VxCatalogy: (context) => VxCatalogy(),
        MyRoutes.Assignment_2: (context) => InstaLogin(),
        MyRoutes.AnnasWork: (context) => AnnasWork(),
        MyRoutes.AnnasLogin: (context) => AnnasLogin(),
        MyRoutes.Sessional: (content) => Sessional(),
        MyRoutes.CartPage: (context) => Cart(),
        MyRoutes.Ink_Well: (context) => Ink_Well(),
        MyRoutes.SingleChildScroll: (context) => SingleChildScroll(),
        MyRoutes.Listview: (context) => List_view(),
        MyRoutes.Listviewbuilder: (context) => Listviewbuilder(),
        MyRoutes.Listviewseperator: (context) => Listviewseperator(),
        MyRoutes.BoxDecoration: (context) => Boxdecoration(),
        MyRoutes.ExpendedWidget: (context) => ExpendedWidget(),
        MyRoutes.MarginAndPadding: (context) => PaddingAndMargin(),
        MyRoutes.ListTileWid: (context) => Listtile(),
        MyRoutes.CircularAvatar: (context) => CircleAvatarWid(),
        MyRoutes.CustomFonts: (context) => CustomFont(),
        MyRoutes.CardWid: (context) => CardWid(),
        MyRoutes.InputData: (context) => InputDataWid(),
        MyRoutes.Datepicker: (context) => Datetimepicker(),
        MyRoutes.GridWidget: (context) => GridViewWidg(),
        MyRoutes.StackWid: (context) => StackWid(),
        MyRoutes.CourseraTask: (context) => Coursera(),
        MyRoutes.TabBarWid: (context) => TabbarWid(),
        MyRoutes.WhatsappScreen: (context) => WhatsappScreen(),
        MyRoutes.AutomaticFormValidator: (context) => AutomaticFormValidator(),
        MyRoutes.WrapWid: (context) => WrapWid(),
        MyRoutes.SizedBoxWid: (context) => SizedBoxWid(),
        MyRoutes.RichTextWid: (context) => RichTextWid(),
        MyRoutes.PositionWid: (context) => PositionWid(),
        MyRoutes.CounterApp: (context) => CounterApp(),
        MyRoutes.SimpleCalculator: (context) => SimpleCalculator(),
        MyRoutes.ConstraintBox: (context) => ConstraintBoxWid(),
        MyRoutes.SplashScreen: (context) => SplashScreen(),
        MyRoutes.RangeSlider: (context) => RangeSliderWid(),
        MyRoutes.BMICalculator: (context) => BMI_Calculator(),
        MyRoutes.Instagram : (context) => InstaLoginScreen(),
        MyRoutes.HomePage: (context) => HomeScreen(),
        MyRoutes.DartPrac: (context) => Dart_Prac(),
        MyRoutes.SharedPref: (context) => SharedPref(),
        MyRoutes.FutureWid: (context) => FutureWid(),
        MyRoutes.StreamWid: (context) => StreamWidget(),
        MyRoutes.CustomFormValidation: (context) => CustomFormValidation(),
        MyRoutes.SharedPref2: (context) => SharedPref2(),
        MyRoutes.DefaultTabWid: (context) => DefaultTabWid(),
        MyRoutes.TableWid: (context) => TableWid(),
        MyRoutes.StepperWid: (context) => StepperWid(),
        MyRoutes.SizedBoxVSContainer: (context) => ContainerandSizedBox()
      },
    );
  }
}
