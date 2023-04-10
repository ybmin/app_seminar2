import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Using Material Components',
      home: ExHome(),
    ),
  );
}

class ExHome extends StatelessWidget {
  const ExHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          title: const Text("Scaffold Title"),
          actions: const [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: null,
            ),
          ]),
      body: const Center(
        child: Text("Body"),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: "Add",
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
