import 'package:catalogapp/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        '/':(context) => LoginPage(),
        MyRoute.homePage: (context)=>HomePage(),
        MyRoute.loginRoute:(context)=>LoginPage(),
      },
    );
  }
}
