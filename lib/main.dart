import 'package:development/screens/sidebar_screen.dart';
import 'package:flutter/material.dart';
import 'components/sidebar_row.dart';
import 'constants.dart';
import 'model/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SidebarScreen()
        )
    );
  }
}





