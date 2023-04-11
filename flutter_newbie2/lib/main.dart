import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/images/sparcs.png"),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("SPARCS Club Room",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                Text(
                  "Blah Blah Blah....",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text("41"),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.phone_callback, color: Colors.blueAccent),
                Text("CALL", style: TextStyle(color: Colors.blueAccent)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.route, color: Colors.blueAccent),
                Text("ROUTE", style: TextStyle(color: Colors.blueAccent)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.share, color: Colors.blueAccent),
                Text("SHARE", style: TextStyle(color: Colors.blueAccent)),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        const Text("Main body explanation"),
      ]),
    );
  }
}
