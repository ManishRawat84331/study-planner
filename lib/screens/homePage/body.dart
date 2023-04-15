import 'package:cognify3/constants.dart';
import 'package:cognify3/screens/profilePage/profilePage.dart';
import 'package:cognify3/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            //
            //color: Colors.green
            ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: size.width,
              decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 25),
                    child: Text(
                      "Cognify",
                      style: GoogleFonts.lobster(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 1),
                              blurRadius: 5,
                              color: Colors.black)
                        ]),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                      },
                      icon: Icon(Icons.person),
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: size.height * 0.3,
              width: size.width * 0.95,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/study.webp",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Services(),
          ],
        ),
      ),
    );
  }
}
