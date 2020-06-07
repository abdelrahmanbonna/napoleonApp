import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:napoleon/utilities/constants.dart';

class HomePage extends StatelessWidget {
  static String id = "home";
  int barindex = 1;

  List<String> list = ["Traduction", "Dictionnaire\nillustré"];
  List<Color> Colorslist = [theme.primaryColor, theme.accentColor];

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //TODO Bonna Work
                    Container(
                      margin: EdgeInsets.all(25),
                      child: Text(
                        "Nous sommes là  pour \n"
                        "vous aider",
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .merge(TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colorslist[index],
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x29000000),
                                    blurRadius: 6,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Image.asset("assets/Conversation-amico.png"),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    list[index],
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: barindex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: theme.accentColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), title: Text('settings')),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), title: Text('questions'))
          ]),
    );
  }
}
