import 'package:cognify3/constants.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          title: Text(
            "Books",
            style: TextStyle(fontSize: 25),
          )),
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BookTile(
                    size: size,
                    name: " Laws Of Human Nature",
                    image: "assets/books/book1.jpg",
                  ),
                  BookTile(
                    size: size,
                    name: "The Hobbit",
                    image: "assets/books/book2.webp",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BookTile(
                    size: size,
                    name: "Behind The Stars",
                    image: "assets/books/book3.webp",
                  ),
                  BookTile(
                    size: size,
                    name: "Get Up Out My Bidness Gurl",
                    image: "assets/books/book4.webp",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BookTile(
                    size: size,
                    name: "The Queen Of Hearts",
                    image: "assets/books/book5.webp",
                  ),
                  BookTile(
                    size: size,
                    name: "More ",
                    image: "assets/books/book6.webp",
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class BookTile extends StatelessWidget {
  const BookTile({
    super.key,
    required this.size,
    required this.name,
    required this.image,
  });

  final Size size;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.27,
      width: size.width * 0.37,
      child: Column(
        children: [
          Container(
            height: size.height * .2,
            width: size.width * 0.37,
            color: Colors.green,
            child: ClipRRect(
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: size.width * 0.37,
            height: size.height * 0.07,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }
}
