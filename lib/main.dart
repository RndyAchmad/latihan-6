import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Latihan 6',),
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(people[index]['photo']!),
                ),
                title: Text(people[index]['name']!),
                subtitle: Text(people[index]['hobby']!),
                onTap: () {
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, String?>> people = [
  {
    'name': 'Rendy Achmadiansyah Mukti',
    'hobby': 'Mengaji',
    'photo': 'assets/pp.jpg',
  },
  {
    'name': 'Persebaya',
    'hobby': 'Sepak Bola',
    'photo': 'assets/psby.jpeg',
  },
];
