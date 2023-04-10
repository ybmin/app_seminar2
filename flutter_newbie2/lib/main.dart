import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: const BoxDecoration(color: Colors.blue),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(
              Icons.search,
            ),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        MyAppBar(
          title: Text(
            "Title",
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ),
        ),
        const Expanded(
          child: Center(
            child: Text("Test Text"),
          ),
        ),
      ],
    ));
  }
}

void main() {
  runApp(const MaterialApp(
      title: 'My App',
      home: SafeArea(
        child: MyScaffold(),
      )));
}
