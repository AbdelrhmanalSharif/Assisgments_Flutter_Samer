import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:abed_app/modules/members.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class Descriptionpage extends StatelessWidget {
  int index;
  Descriptionpage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Color sColor = const Color.fromRGBO(9, 21, 38, 0.9);
    List members = [];
    Future getdata() async {
      try {
        var response =
            await http.get(Uri.https('api.github.com', 'users/hadley/orgs'));
        var jsondata = jsonDecode(response.body);
        for (var eachmember in jsondata) {
          final member = Member(
            description: eachmember['description'],
          );
          members.add(member);
        }
      } catch (e) {
        e.toString();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Descriptions',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: SingleChildScrollView(
                child: Center(
                  child: Card(
                    color: sColor,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            members[index].description.toString(),
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
