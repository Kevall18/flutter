import 'package:android_studio/listview/Separated.dart';
import 'package:flutter/material.dart';

class ListBuilderr extends StatelessWidget {
  const ListBuilderr({super.key});

  @override
  Widget build(BuildContext context) {
    //final List<String> items = List<String>.generate(9, (i) => '${i + 1}');
    final List<String> entries = <String>[
      'Apple',
      'Ball',
      'Cat',
      'Dog',
      'Elephant',
      'Frog',
      'Gun',
      'Hero',
      'India',
      'Joker',
      'Kite',
      "Limbu"
    ];
    final List<String> imagedata = <String>[
      'https://media.istockphoto.com/id/495878092/photo/red-apple.jpg?s=612x612&w=0&k=20&c=M2ndFI1v2erJM18q1Cd1QCM8jqBlRKLc1nLE9BNp-EY=',
      'https://t3.ftcdn.net/jpg/02/11/11/44/360_F_211114404_Etx3B5GYpJG9THGkLw22okquzxEYjA8o.jpg',
      'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg',
      'https://mymodernmet.com/wp/wp-content/uploads/2020/10/cooper-baby-corgi-dogs-8.jpg',
      'https://images.herzindagi.info/image/2020/Oct/anant-ambani-fat-fit-main.jpg',
      'https://media.istockphoto.com/id/175397603/photo/frog.jpg?s=612x612&w=0&k=20&c=EMXlwg5SicJllr7gnSFUUjzwCGa1ciLjYD1bk8NvO2E=',
      'https://c0.klipartz.com/pngpicture/63/1000/gratis-png-pistola-de-mano.png',
      'https://cdn1.vectorstock.com/i/1000x1000/12/50/super-hero-boy-posing-vector-5581250.jpg',
      'https://t4.ftcdn.net/jpg/01/14/62/33/360_F_114623372_ZUIjiBqg3GGiTkkvFzAk4GJ0zpqliJE7.jpg',
      'https://m.media-amazon.com/images/M/MV5BMGQ1ZGZmNTAtM2MyYi00NmZhLTkwYmYtNTNlZDRhMzU2ZTgwXkEyXkFqcGdeQW1yb3NzZXI@._V1_QL75_UX500_CR0,0,500,281_.jpg',
      'https://static.vecteezy.com/system/resources/previews/003/621/215/original/kite-from-multicolored-paints-splash-of-watercolor-colored-drawing-realistic-illustration-of-paints-vector.jpg',
      'https://www.starhealth.in/blog/wp-content/uploads/2022/12/cropped-01-4.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("List view builder"),
        centerTitle: true,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListSeparated())),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.network(imagedata[index], fit: BoxFit.cover),
                    ),
                  ),
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
          }),
    );
  }

//  onTapFunction(context , dynamic xyz){
//        Navigator.push(context,
//       MaterialPageRoute(builder: (context) => xyz));
// }
}
