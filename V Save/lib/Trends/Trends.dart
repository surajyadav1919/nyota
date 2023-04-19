import 'package:flutter/material.dart';

class Trends extends StatefulWidget {
  const Trends({super.key});

  @override
  State<Trends> createState() => _TrendsState();
}

class _TrendsState extends State<Trends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Trends For you",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        child: ListView(
          children: [
            const Text(
              "Trending in India",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "# BMW",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "97.7 k  likes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_horiz_outlined,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "# Audi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "111.7 k  likes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_horiz_outlined,
                )
              ],
            ),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Car model . Trendings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "# Ferrari",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "125.7 k  Likes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_horiz_outlined,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "# Tesla",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "6.7 k  Likes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_horiz_outlined,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
