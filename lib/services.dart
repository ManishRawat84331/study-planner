import 'package:cognify3/constants.dart';
import 'package:cognify3/screens/booksPage/booksPage.dart';
import 'package:cognify3/screens/profilePage/profilePage.dart';
import 'package:cognify3/screens/scanPage/scanPage.dart';
import 'package:cognify3/screens/todoPage/todoPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/doubtsPage/doubtPage.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          serviceTile(
            size: size,
            title: "Doubt",
            icon: Icons.light,
            //ontap: Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ProfilePage())),
            page: DoubtPage(),
          ),
          serviceTile(
            size: size,
            title: "scan",
            icon: Icons.camera,
            page: ScanPage(),
          ),
          serviceTile(
            size: size,
            title: "Books",
            icon: Icons.book,
            page: BooksPage(),
          ),
          serviceTile(
            size: size,
            title: "To Do list",
            icon: Icons.note_add_outlined,
            page: ToDoPage(),
          ),
        ],
      ),
    );
  }
}

class serviceTile extends StatelessWidget {
  const serviceTile({
    Key? key,
    required this.size,
    required this.icon,
    required this.title,
    required this.page,
    //required this.ontap,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String title;
  final Widget page;
  //final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          height: 170,
          width: size.width * 0.5,
          decoration: BoxDecoration(
              color: Constants.buttonColor,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => page));
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: Icon(
                      icon,
                      size: 60,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                    height: 40,
                    width: size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          title,
                          style: GoogleFonts.cormorant(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
