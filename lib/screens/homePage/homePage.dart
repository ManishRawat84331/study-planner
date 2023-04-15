import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cognify3/constants.dart';
import 'package:cognify3/screens/doubtsPage/doubtPage.dart';
import 'package:cognify3/screens/homePage/body.dart';
import 'package:cognify3/screens/profilePage/profilePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    DoubtPage(),
    ProfilePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Home Page"),
        backgroundColor: Constants.primaryColor,
        elevation: 0,
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Profile"),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("About Us"),
                      value: 2,
                    ),
                    PopupMenuItem(
                      child: Text("Settings"),
                      value: 3,
                    ),
                    PopupMenuItem(
                      child: Text("Logout"),
                      value: 4,
                    ),
                  ])
        ],
      ),
      body: Body(),
      // bottomNavigationBar: BottomNavigationBar(
      //     // onTap: ,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: "home",
      //       ),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "car"),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "bus")
      //     ]),
      // body: IndexedStack(
      //   index : currentIndex,
      //   children: pages
      // ),
      // bottomNavigationBar: BottomNavyBar(
      //   selectedIndex: currentIndex,
      //   curve: Curves.elasticOut,
      //   animationDuration: Duration(seconds: 5),
      //   onItemSelected: (index) {
      //     setState(
      //       () {
      //         currentIndex = index;
      //       },
      //     );
      //   },
      //   items: <BottomNavyBarItem>[
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("Home"),
      //       activeColor: Constants.primaryColor,
      //       inactiveColor: Colors.black,

      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.car_crash),
      //       title: Text("car"),
      //       activeColor: Constants.primaryColor,
      //       inactiveColor: Colors.black,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.light),
      //       title: Text("light"),
      //       activeColor: Constants.primaryColor,
      //       inactiveColor: Colors.black,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text("Profile"),
      //       activeColor: Constants.primaryColor,
      //       inactiveColor: Colors.black,
      //     ),
      //   ],
      // ),
    );
  }
}
