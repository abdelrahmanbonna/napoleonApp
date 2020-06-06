import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = "home";

  HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40),
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Container(
                height: 50.00,
                width: 50.00,
                decoration: BoxDecoration(
                  color: Color(0xff5c5c5c),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Container(
                height: 50.00,
                width: 50.00,
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 20,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/study.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 40,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bonjour",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "UserName",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                margin: EdgeInsets.only(top: 350),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                   //TODO dELETE THE NEXT CONTAINER
                    Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                    //TODO Bonna Work
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
