import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static final id = '/login';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: mediaQuery.size.height * 0.8,
                ),
                Container(
                  width: mediaQuery.size.width,
                  height: mediaQuery.size.height * 0.2,
                  child: Image.asset(
                    'assets/back.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                height: mediaQuery.size.height * 0.5,
                width: mediaQuery.size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
