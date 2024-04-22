import 'package:flutter/material.dart';

final List<String> users = ["Tom", "Bob", "Sam", "Mike"];
final List<String> companies = ["Google", "Microsoft", "Apple", "JetBrains"];

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: users.length,
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Text(users[index], style:const TextStyle(fontSize: 22)),
                  leading: const Icon(Icons.face),
                  trailing: const Icon(Icons.phone),
                  subtitle: Text("Works in ${companies[index]}")
              );
            }
        ),
        appBar: AppBar(title: const Text("METANIT.COM")),)
  ));
}