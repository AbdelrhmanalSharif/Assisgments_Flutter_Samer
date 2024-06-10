import 'dart:convert';

import 'package:assg5/core/data/info_person.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class CardPerson extends StatelessWidget {
  CardPerson({super.key});

  List<Person> persons = [];

  Future getPerson() async {
    var response =
        await http.get(Uri.http('api.github.com', 'users/hadley/orgs'));
    var jsonData = jsonDecode(response.body);

    for (var i in jsonData) {
      final person = Person(
        login: i['login'],
        id: i['id'],
        node_id: i['node_id'],
        url: i['url'],
        events_url: i['events_url'],
        hooks_url: i['hooks_url'],
        issues_url: i['issues_url'],
        members_url: i['members_url'],
        public_members_url: i['public_members_url'],
        avatar_url: i['avatar_url'],
        description: i['description'],
      );
      persons.add(person);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPerson(),
        builder: (context, snapshot) {
          if (persons.isEmpty) {
            print('no data');
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: persons.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(persons[index].avatar_url),
                    ),
                    title: Text(persons[index].login),
                    subtitle: Text(persons[index].description),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
