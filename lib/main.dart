import 'package:catalogapp/core/store.dart';
import 'package:catalogapp/screens/cart_page.dart';
import 'package:catalogapp/screens/home_page.dart';
import 'package:catalogapp/widgest/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'screens/login_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(VxState(store: MyStore(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.homePage,
      routes: {
        '/': (context) => LoginPage(),
        MyRoute.homePage: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.cartRoute:(context)=>CartPage(),
      },
    );
  }
}
