import 'package:flutter/material.dart';
import 'package:napoleon/screens/home.dart';
import 'package:napoleon/services/UserData.dart';
import 'package:napoleon/services/WordsData.dart';
import 'package:napoleon/utilities/constants.dart';
import 'package:provider/provider.dart';

import 'screens/Login.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserData()),
        ChangeNotifierProvider.value(value: WordsData()),
      ],
      child: MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => HomePage(),
          LoginPage.id: (context) => LoginPage(),
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
