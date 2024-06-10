import 'package:assg5/core/feature/logic/alpha.dart';
import 'package:assg5/core/feature/widget/card_person.dart';
import 'package:flutter/material.dart';

class PageTeam extends StatelessWidget {
  const PageTeam({super.key});

  @override
  Widget build(context) {
    String x = takeAlphabet();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Team $x"),
            CardPerson(),
          ],
        ),
      ),
    );
  }
}
