import 'package:cognify3/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final time = DateTime.now();

    return Scaffold(
      // backgroundColor: Color.fromRGBO(113, 238, 184, 0.842),

      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/blue.webp"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      height: size.height * 0.2,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Padding(padding: EdgeInsets.only(left: 20)),
                          Text("Name : Manish Rawat",
                              style: GoogleFonts.lobster(fontSize: 20)),
                          Text("Phone : 9837371512",
                              style: GoogleFonts.lobster(fontSize: 20)),
                          Text("Email : manishrawat0607@gmail.com",
                              style: GoogleFonts.lobster(fontSize: 20))
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.2,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 59, 59),
                          borderRadius: BorderRadius.circular(100)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/th.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      height: size.height * 0.5,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "To Do List",
                          style: GoogleFonts.lobster(fontSize: 30),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          //0149
                          "• Meeting with a client ▢",
                          style: GoogleFonts.lobster(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          //0149
                          "• WorkOut ▢",
                          style: GoogleFonts.lobster(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          //0149
                          "• Shopping ▢",
                          style: GoogleFonts.lobster(fontSize: 20),
                        ),
                      ]),
                    ),
                    Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          height: size.height * 0.24,
                          width: size.width * 0.35,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Text(
                                "Date",
                                style: GoogleFonts.lobster(fontSize: 30),
                              ),
                              Text(
                                '${DateFormat('yMMMMd').format(time)}',
                                style: GoogleFonts.lobster(fontSize: 22),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Time",
                                style: GoogleFonts.lobster(fontSize: 30),
                              ),
                              Text(
                                '${DateFormat('jms').format(time)}',
                                style: GoogleFonts.lobster(fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          height: size.height * 0.24,
                          width: size.width * 0.35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 59, 255, 85),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            Text(
                              "Time",
                              style: GoogleFonts.lobster(fontSize: 30),
                            ),
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  height: size.height * 0.25,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 133, 52, 226),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text(
                        "Qoute Of The Day",
                        style: GoogleFonts.lobster(fontSize: 30),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          " Dear friends, I urge you, as aliens and strangers in the world, to abstain from sinful desires, which war against your soul.",
                          style: GoogleFonts.lobster(fontSize: 21),
                        ),
                      ),
                    ],
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
