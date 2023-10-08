import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nnuroportfolio/app_theme.dart';
import 'package:nnuroportfolio/presentation/pages/home/home_page.dart';
import 'package:nnuroportfolio/presentation/routes/routes.dart';
import 'package:nnuroportfolio/values/values.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConst.APP_TITLE,
      theme: AppTheme.lightThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.homePageRoute,
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
    );
  }
}
