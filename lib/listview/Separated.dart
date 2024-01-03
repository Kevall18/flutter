import 'package:android_studio/listview/simple.dart';
import 'package:flutter/material.dart';

class ListSeparated extends StatelessWidget {
  const ListSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(15, (i) => '${i + 1}');
    final List<String> entries = <String>[
      'Valorant',
      'Overwatch',
      'Red Dead Redemption 2',
      'Fortnite',
      'Cyberpunk 2077',
      'Minecraft',
      'Assassins Creed Valhalla',
      'Call of Duty: Warzone',
      'Animal Crossing: New Horizons',
      'Spider-Man: Miles Morales'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Separated List View"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Simple())),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xff764abc),
                child: Text(items[index]),
              ),
              title: Text(
                '${entries[index]}',
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Text(
                'Item description',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 15,
        ),
      ),
    );
  }
}
