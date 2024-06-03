import 'package:flutter/material.dart';

class SitePage extends StatefulWidget {
  const SitePage({super.key});

  @override
  State<SitePage> createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  double height = 10;
  double width = 10;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter GridView inside Column',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
          10,
          (index) {
            return Container(
              color: Colors.cyan,
              height: height,
              width: width,
              child: Text(
                '$count',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: TextButton(
        style: TextButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: () {
          setState(() {
            height += 10;
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
