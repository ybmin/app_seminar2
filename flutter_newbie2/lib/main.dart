import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Center(child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //   child: ListView(
        //     children: [
        //       _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        //       _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        //       _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        //       _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        //       _tile('United Artists Stonestown Twin', '501 Buckingham Way',
        //           Icons.theaters),
        //       _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        //       const Divider(),
        //       _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        //       _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        //       _tile('Chaiya Thai Restaurant', '272 Claremont Blvd',
        //           Icons.restaurant),
        //       _tile('La Ciccia', '291 30th St', Icons.restaurant),
        //     ],
        //   ),
        // ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Column(
        //         //layout Widget
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           //visible widgets
        //           const Text('Hello World'),
        //           const SizedBox(
        //             height: 12,
        //           ),
        //           Row(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Icon(Icons.star, color: Colors.green[500]),
        //               Icon(Icons.star, color: Colors.green[500]),
        //               Icon(Icons.star, color: Colors.green[500]),
        //               const Icon(Icons.star, color: Colors.black),
        //               const Icon(Icons.star, color: Colors.black),
        //             ],
        //           ),
        //         ],
        //       ),
        //       const SizedBox(
        //         width: 18,
        //       ),
        //       Expanded(
        //         child: Image.asset(
        //           'assets/images/sparcs.png',
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0.6, 0.6),
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/sparcs.png'),
                  radius: 100,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: const Text(
                    'SPARCS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(children: [
                Image.asset('assets/images/sparcs.png'),
                const Divider(),
                const ListTile(
                    title: Text("SPARCS"),
                    leading: Icon(Icons.group, color: Colors.amber)),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}
