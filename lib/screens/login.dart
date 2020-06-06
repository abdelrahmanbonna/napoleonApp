import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  static final id = '/login';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          width: mediaQuery.size.width,
          height: mediaQuery.size.height,
          child: SingleChildScrollView(
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
                    margin: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.2,
                    ),
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
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: mediaQuery.size.width * 0.45,
                          child: Image.asset('assets/logo.png'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.phone_iphone,
                                size: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Container(
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
                              height: mediaQuery.size.height * 0.07,
                              width: mediaQuery.size.width * 0.7,
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.size.width * 0.05,
                                vertical: mediaQuery.size.height * 0.01,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone number",
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mediaQuery.size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.lock,
                                size: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Container(
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
                              height: mediaQuery.size.height * 0.07,
                              width: mediaQuery.size.width * 0.7,
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.size.width * 0.05,
                                vertical: mediaQuery.size.height * 0.01,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: (mediaQuery.size.height -
                                      mediaQuery.padding.top) *
                                  0.05,
                              left: mediaQuery.size.width * 0.2,
                              right: mediaQuery.size.width * 0.2),
                          width: mediaQuery.size.width * 0.6,
                          height: (mediaQuery.size.height -
                                  mediaQuery.padding.top) *
                              0.07,
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              Navigator.of(context).pushNamed(HomePage.id);
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                            textColor: Theme.of(context).textTheme.button.color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width,
                  margin: EdgeInsets.only(
                    top: mediaQuery.size.height * 0.1,
                  ),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
