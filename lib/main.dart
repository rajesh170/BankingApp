import 'package:flutter/material.dart';
import 'package:banking_app_ui/screens/base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Banking App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Poppins",
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          primarySwatch: Colors.blue,
        ),
        home: BaseScreen());
  }
}
