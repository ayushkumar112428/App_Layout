import 'package:flutter/material.dart';

class OnlineClass extends StatelessWidget {
  OnlineClass({super.key});
  final List<Map<String, String>> items = [
    {
      'title': 'UI/UX DESIGNER',
      'subtitle': 'BEGINNER',
      'imagePath': 'assets/instagram/Post/post01.jpg',
    },
    {
      'title': 'SOFTWARE MOBILE',
      'subtitle': 'BEGINNER',
      'imagePath': 'assets/instagram/Post/post01.jpg',
    },
    {
      'title': 'AI (Artificial intelligence)',
      'subtitle': 'BEGINNER',
      'imagePath': 'assets/instagram/Post/post01.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 7, 76),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Online",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Master Class",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  items.length,
                  (index) => Container(
                    height: 330,
                    width: 280,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Container(
                            height: 50,
                            width: 135,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                "Recommended",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            items[index]['title']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            items[index]['subtitle']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38, left: 80),
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(items[index]['imagePath']!),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Free online class",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            const Text(
              "From onw 80 Lectures",
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      height: 75,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/instagram/Post/post02.jpg"),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const SizedBox(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "8 Hours",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      height: 75,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/instagram/Post/post02.jpg"),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const SizedBox(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Stack Javascript",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "6 Hours",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
